# Controlador do upload dos filmes
defmodule GradiWeb.MoviesController do
  import Ecto.Query, warn: false
  use GradiWeb, :controller

  alias GradiValidation.XMLSchema
  alias GradiWeb.XMLMapper
  alias Gradi.Repo

  defp insert_movies(%{movies: movies}), do: Enum.map(movies, &Gradi.Movies.upsert_movie/1)

  defp insert_languages(%{languages: languages}),
    do: Enum.map(languages, &Gradi.Languages.upsert_language/1)

  defp insert_companies(%{companies: companies}),
    do: Enum.map(companies, &Gradi.Companies.upsert_company/1)

  defp insert_directors(%{directors: directors}),
    do: Enum.map(directors, &Gradi.Directors.upsert_director/1)

  defp insert_actors_and_characters(%{characters: characters, movies: movies}) do
    movies_characters =
      Enum.map(movies, fn m -> [{m.imdb_id, m.characters}] end) |> List.flatten()

    Enum.map(characters, fn c -> insert_actor_and_character(c, movies_characters) end)
  end

  defp insert_actor_and_character(character, movies_characters) do
    IO.inspect(character)
    IO.inspect(movies_characters)

    movie =
      Enum.find(movies_characters, fn m ->
        Enum.find_value(elem(m, 1), fn name -> name == character.character end)
      end)

    IO.inspect(movie)
    movie_imdb = movie |> elem(0)
    movie = Gradi.Movies.get_by_imdb_id(movie_imdb)

    Ecto.build_assoc(movie, :characters, %{
      character: character.character,
      protagonist: character.protagonist
    })
    |> Repo.insert()
  end

  defp insert_resource(file) do
    resource = file |> XMLMapper.map_movies()
    IO.inspect(resource)

    movies = insert_movies(resource)
    languages = insert_languages(resource)
    companies = insert_companies(resource)
    directors = insert_directors(resource)
    characters = insert_actors_and_characters(resource)

    responses = List.flatten([movies, languages, companies, directors, characters])
    IO.inspect(responses)

    case Enum.all?(responses, fn x -> {:ok, _} = x end) do
      true -> {:ok, :inserted}
      false -> {:error, :reason}
    end
  end

  def movies(conn, %{"movie" => file}) do
    case XMLSchema.validate(file.path, :movie) do
      # TODO: pegar o novo arquivo e fazer o resto do fluxo.
      {:ok, new_file} ->
        case insert_resource(new_file) do
          {:ok, _movies} -> conn |> send_resp(201, "OK!")
          {:error, _reason} -> conn |> send_resp(500, "Erro na inserção")
        end

      {:error, _} ->
        conn |> send_resp(409, "Erro")
    end
  end
end
