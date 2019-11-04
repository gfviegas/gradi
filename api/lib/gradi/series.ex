defmodule Gradi.Series do
  defp format_map(resource = %BSON.ObjectId{}), do: resource

  defp format_map(resource) when is_list(resource) do
    IO.inspect(resource)
    resource |> Enum.map_every(1, &format_map/1)
  end

  defp format_map(resource = %{}) do
    resource |> Map.new(fn {k, v} -> {String.to_atom(k), format_map(v)} end)
  end

  defp format_map(resource), do: resource

  # Busca por título
  defp with_search(query, %{title: title}) do
    title = " " <> title <> " "

    tokenized_words = [
      " i ",
      " me ",
      " my ",
      " myself ",
      " we ",
      " our ",
      " ours ",
      " ourselves ",
      " you ",
      " your ",
      " yours ",
      " yourself ",
      " yourselves ",
      " he ",
      " him ",
      " his ",
      " himself ",
      " she ",
      " her ",
      " hers ",
      " herself ",
      " it ",
      " its ",
      " itself ",
      " they ",
      " them ",
      " their ",
      " theirs ",
      " themselves ",
      " what ",
      " which ",
      " who ",
      " whom ",
      " this ",
      " that ",
      " these ",
      " those ",
      " am ",
      " is ",
      " are ",
      " was ",
      " were ",
      " be ",
      " been ",
      " being ",
      " have ",
      " has ",
      " had ",
      " having ",
      " do ",
      " does ",
      " did ",
      " doing ",
      " a ",
      " an ",
      " the ",
      " and ",
      " but ",
      " if ",
      " or ",
      " because ",
      " as ",
      " until ",
      " while ",
      " of ",
      " at ",
      " by ",
      " for ",
      " with ",
      " about ",
      " against ",
      " between ",
      " into ",
      " through ",
      " during ",
      " before ",
      " after ",
      " above ",
      " below ",
      " to ",
      " from ",
      " up ",
      " down ",
      " in ",
      " out ",
      " on ",
      " off ",
      " over ",
      " under ",
      " again ",
      " further ",
      " then ",
      " once ",
      " here ",
      " there ",
      " when ",
      " where ",
      " why ",
      " how ",
      " all ",
      " any ",
      " both ",
      " each ",
      " few ",
      " more ",
      " most ",
      " other ",
      " some ",
      " such ",
      " no ",
      " nor ",
      " not ",
      " only ",
      " own ",
      " same ",
      " so ",
      " than ",
      " too ",
      " very ",
      " s ",
      " t ",
      " can ",
      " will ",
      " just ",
      " don ",
      " should ",
      " now "
    ]

    # remove as stopwords

    dictionary =
      String.replace(
        String.downcase(title),
        tokenized_words,
        "|"
      )

    dictionary = String.trim(dictionary)
    splitedTerms = String.split(dictionary, "|")
    IO.inspect(splitedTerms)

    # gera a regex de busca do mongo para cada termo
    searchTerms =
      Enum.map(
        splitedTerms,
        fn term -> %BSON.Regex{pattern: "#{term}", options: "i"} end
      )

    # busca com or por termos possíveis
    Map.merge(query, %{
      "$or" => [
        %{title: %{"$in" => searchTerms}},
        %{"actors.name": %{"$in" => searchTerms}},
        %{"actors.character": %{"$in" => searchTerms}},
        %{genres: %{"$in" => searchTerms}},
        %{languages: %{"$in" => searchTerms}},
        %{description: %{"$in" => searchTerms}}
      ]
    })
  end

  defp with_search(query, _), do: query

  # Contagem de recursos
  defp count_series(query), do: Mongo.count_documents(:mongo, "series", query)

  # Paginação
  defp with_pagination(options, %{limit: limit, page: page}) do
    [{:limit, limit}, {:skip, (page - 1) * limit} | options]
  end

  defp with_pagination(options, _), do: options

  # Ordenação
  defp with_sort(options, filter = %{sort: order_field}) do
    field_atom = sort_field(order_field)
    direction = sort_direction(filter)
    sort = Map.put(%{}, field_atom, direction)
    [{:sort, sort} | options]
  end

  defp with_sort(options, _), do: options

  defp sort_field(field), do: Macro.underscore(field) |> String.to_existing_atom()
  defp sort_direction(%{sort_direction: "asc"}), do: 1
  defp sort_direction(%{sort_direction: "desc"}), do: -1
  defp sort_direction(_), do: 1

  def list_series do
    Mongo.find(:mongo, "series", %{})
    |> Enum.to_list()
    |> Enum.map_every(1, &format_map/1)
  end

  def list_series(filter = %{}) do
    query =
      %{}
      |> with_search(filter)

    # A paginação é feita depois para não influenciar na contagem
    {:ok, count} = count_series(query)

    options =
      []
      |> with_pagination(filter)
      |> with_sort(filter)

    series =
      case options do
        [] -> Mongo.find(:mongo, "series", query)
        _ -> Mongo.find(:mongo, "series", query, options)
      end

    series =
      series
      |> Enum.to_list()
      |> Enum.map_every(1, &format_map/1)

    {series, count}
  end

  def get_serie!(id) when is_binary(id) do
    get_serie!(id |> BSON.ObjectId.decode!())
  end

  def get_serie!(id = %BSON.ObjectId{}) do
    Mongo.find_one(:mongo, "series", %{_id: id}) |> format_map
  end

  def insert_series(series) when is_list(series) do
    results = Enum.map(series, &insert_series/1)

    case Enum.all?(results, fn r -> {:ok, _} = r end) do
      true -> {:ok, results |> length}
      true -> {:error, :error}
    end
  end

  def insert_series(coll) do
    # coll = nova série que deve ser inserida
    Mongo.insert_one(:mongo, "series", coll)
  end
end
