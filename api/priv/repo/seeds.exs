# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Gradi.Repo.insert!(%Gradi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Gradi.Repo
alias Gradi.Actors.Actor
alias Gradi.Companies.Company
alias Gradi.Directors.Director
alias Gradi.Genres.Genre
alias Gradi.Languages.Language
alias Gradi.Movies.Movie
alias Gradi.Movies.Character
alias Gradi.Writers.Writer

# Creating Actors...
%Actor{id: 1, name: "Keanu Reeves"} |> Repo.insert!
%Actor{id: 2, name: "Laurence Fishburne"} |> Repo.insert!
%Actor{id: 3, name: "Carrie-Anne Moss"} |> Repo.insert!
%Actor{id: 4, name: "Hugo Weaving"} |> Repo.insert!
%Actor{id: 5, name: "Joe Pantoliano"} |> Repo.insert!
%Actor{id: 6, name: "Marcus Chong"} |> Repo.insert!
%Actor{id: 7, name: "Julian Arahanga"} |> Repo.insert!
%Actor{id: 8, name: "Matt Doran"} |> Repo.insert!

# Creating Genres...
%Genre{id: 1, name: "Action"} |> Repo.insert!
%Genre{id: 2, name: "Sci-fi"} |> Repo.insert!

# Creating Languages...
%Language{id: 1, name: "English"} |> Repo.insert!
%Language{id: 2, name: "Portuguese"} |> Repo.insert!
%Language{id: 3, name: "Spanish"} |> Repo.insert!
%Language{id: 4, name: "French"} |> Repo.insert!

# Creating Directors...
%Director{id: 1, name: "Lana Wachowski"} |> Repo.insert!
%Director{id: 2, name: "Lilly Wachowski"} |> Repo.insert!

# Creating Writers...
%Writer{id: 1, name: "Lana Wachowski"} |> Repo.insert!
%Writer{id: 2, name: "Lilly Wachowski"} |> Repo.insert!

# Creating Comapnies...
%Company{id: 1, name: "Warner Bros.", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Warner_Bros_logo.svg/800px-Warner_Bros_logo.svg.png"} |> Repo.insert!
%Company{id: 2, name: "Village Roadshow Pictures", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/en/c/c8/Village_roadshow_pictures_logo.jpg"} |> Repo.insert!
%Company{id: 3, name: "Silver Pictures", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/en/3/37/Silver_pictures_2.jpg"} |> Repo.insert!

# Creating Movies...
%Movie{
  id: 1,
  imdb_id: "tt0133093",
  title: "Matrix",
  classification: 12,
  description: "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.",
  release_date: ~D[1999-03-31],
  revenue: 463517383.0,
  poster: "https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg"
} |> Repo.insert!

# Creating Characters...
%Character{protagonist: true, character: "Neo", movie_id: 1, actor_id: 1} |> Repo.insert!
%Character{protagonist: false, character: "Morpheus", movie_id: 1, actor_id: 2} |> Repo.insert!
%Character{protagonist: false, character: "Trinity", movie_id: 1, actor_id: 3} |> Repo.insert!
%Character{protagonist: false, character: "Agent Smith", movie_id: 1, actor_id: 4} |> Repo.insert!
%Character{protagonist: false, character: "Cypher", movie_id: 1, actor_id: 5} |> Repo.insert!
%Character{protagonist: false, character: "Tank", movie_id: 1, actor_id: 6} |> Repo.insert!
%Character{protagonist: false, character: "Apoc", movie_id: 1, actor_id: 7} |> Repo.insert!
%Character{protagonist: false, character: "Mouse", movie_id: 1, actor_id: 8} |> Repo.insert!

# Creating M2M Associations
Repo.insert_all("movies_genres", [%{movie_id: 1, genre_id: 1}, %{movie_id: 1, genre_id: 2}])
Repo.insert_all("movies_languages", [%{movie_id: 1, language_id: 1}, %{movie_id: 1, language_id: 2}])
Repo.insert_all("movies_directors", [%{movie_id: 1, director_id: 1}, %{movie_id: 1, director_id: 2}])
Repo.insert_all("movies_writers", [%{movie_id: 1, writer_id: 1}, %{movie_id: 1, writer_id: 2}])
Repo.insert_all("movies_companies", [%{movie_id: 1, company_id: 1}, %{movie_id: 1, company_id: 2}, %{movie_id: 1, company_id: 3}])
