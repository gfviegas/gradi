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
        imdb_id: ~x"./imdbid/text()",
        title: ~x"./title/text()",
        classification: ~x"./classification/text()",
        description: ~x"./description/text()",
        release_date: ~x"./release_date/text()",
        revenue: ~x"./revenue/text()"f,
        poster: ~x"./poster/text()",
        characters: ~x"./characters/character/text()"l
      ],
      actors: [
        ~x"//movies/movie/actors/actor"l,
        name: ~x"./text()"
      ],
      languages: [
        ~x"//movies/movie/languages/language"l,
        name: ~x"./text()"
      ],
      genres: [
        ~x"//movies/movie/genres/genre"l,
        name: ~x"./text()"
      ],
      directors: [
        ~x"//movies/movie/directors/director"l,
        name: ~x"./text()"
      ],
      companies: [
        ~x"//movies/movie/companies/company"l,
        name: ~x"./text()",
        country: ~x"./@country",
        logo: ~x"./@logo"
      ],
      characters: [
        ~x"//movies/movie/characters/character"l,
        character: ~x"./text()",
        actor: ~x"./@actor",
        protagonist: ~x"./@protagonist" |> transform_to_boolean
      ]
    )
  end


end
