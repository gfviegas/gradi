defmodule GradiWeb.XMLMapper do
  import SweetXml

  defp transform_to_boolean(arg) do
    transform_by(arg, fn
      'false' -> false
      "false" -> false
      'true' -> true
      "true" -> true
      _ -> nil
    end)
  end

  defp transform_to_date(arg) do
    transform_by(arg, fn x -> Date.from_iso8601! x end)
  end

  def map_series(doc) do
    doc |> xmap(
      series: [
        ~x"//seriesset/series"l,
        imdb_id: ~x"./imdbid/text()",
        title: ~x"./title/text()",
        release_date: ~x"./release_date/text()",
        runtime: ~x"./runtime/text()",
        classification: ~x"./classification/text()",
        description: ~x"./description/text()",
        poster: ~x"./poster/text()",
        seasons: ~x"./seasons/text()"i,
        actors: [
          ~x"./actors/actor"l,
          name: ~x"./text()",
          character: ~x"./@character",
          protagonist: ~x"./@protagonist" |> transform_to_boolean
        ],
        languages: ~x"./languages/language/text()"l,
        countries: ~x"./countries/country/text()"l,
        writers: ~x"./writers/writer/text()"l,
        genres: ~x"./genres/genre/text()"l
      ]
    )
  end

  def map_movies(doc) do
    doc |> xmap(
      movies: [
        ~x"//movies/movie"l,
        imdb_id: ~x"./imdbid/text()"S,
        title: ~x"./title/text()"S,
        classification: ~x"./classification/text()"i,
        description: ~x"./description/text()"S,
        release_date: ~x"./release_date/text()"S |> transform_to_date,
        revenue: ~x"./revenue/text()"f,
        poster: ~x"./poster/text()"S,
        characters: ~x"./characters/character/text()"sl
      ],
      languages: [
        ~x"//movies/movie/languages/language"l,
        name: ~x"./text()"S
      ],
      genres: [
        ~x"//movies/movie/genres/genre"l,
        name: ~x"./text()"S
      ],
      directors: [
        ~x"//movies/movie/directors/director"l,
        name: ~x"./text()"S
      ],
      companies: [
        ~x"//movies/movie/companies/company"l,
        name: ~x"./text()"S,
        country: ~x"./@country"S,
        logo: ~x"./@logo"S
      ],
      characters: [
        ~x"//movies/movie/characters/character"l,
        character: ~x"./text()"S,
        actor: ~x"./@actor"S,
        protagonist: ~x"./@protagonist" |> transform_to_boolean
      ]
    )
  end


end
