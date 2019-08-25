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

%Actor{id: 9, name: "Leonardo DiCaprio"} |> Repo.insert!
%Actor{id: 10, name: "Kate Winslet"} |> Repo.insert!
%Actor{id: 11, name: "Billy Zane"} |> Repo.insert!
%Actor{id: 12, name: "Kathy Bates"} |> Repo.insert!
%Actor{id: 13, name: "Frances Fisher"} |> Repo.insert!
%Actor{id: 14, name: "Gloria Stuart"} |> Repo.insert!
%Actor{id: 15, name: "Bill Paxton"} |> Repo.insert!
%Actor{id: 16, name: "Bernard Hill"} |> Repo.insert!
%Actor{id: 17, name: "David Warner"} |> Repo.insert!
%Actor{id: 18, name: "Victor Garber"} |> Repo.insert!
%Actor{id: 19, name: "Jonathan Hyde"} |> Repo.insert!
%Actor{id: 20, name: "Suzy Amis"} |> Repo.insert!

%Actor{id: 21, name: "Gloria Foster"} |> Repo.insert!

%Actor{id: 22, name: "Mark Hamill"} |> Repo.insert!
%Actor{id: 23, name: "Harrison FOrd"} |> Repo.insert!
%Actor{id: 24, name: "Carrie Fisher"} |> Repo.insert!
%Actor{id: 25, name: "Peter Cushing"} |> Repo.insert!
%Actor{id: 26, name: "Alec Guinness"} |> Repo.insert!
%Actor{id: 27, name: "Anthony Daniels"} |> Repo.insert!
%Actor{id: 28, name: "Kenny Baker"} |> Repo.insert!
%Actor{id: 29, name: "Peter Mayhew"} |> Repo.insert!
%Actor{id: 30, name: "David Prowse"} |> Repo.insert!

%Actor{id: 31, name: "Billy Dee Williams"} |> Repo.insert!
%Actor{id: 32, name: "Frank Oz"} |> Repo.insert!
%Actor{id: 33, name: "Jeremy Bulloch"} |> Repo.insert!



# Creating Genres...
%Genre{id: 1, name: "Action"} |> Repo.insert!
%Genre{id: 2, name: "Sci-fi"} |> Repo.insert!
%Genre{id: 3, name: "Drama"} |> Repo.insert!
%Genre{id: 4, name: "Romance"} |> Repo.insert!
%Genre{id: 5, name: "Adventure"} |> Repo.insert!
%Genre{id: 6, name: "Fantasy"} |> Repo.insert!

# Creating Languages...
%Language{id: 1, name: "English"} |> Repo.insert!
%Language{id: 2, name: "Portuguese"} |> Repo.insert!
%Language{id: 3, name: "Spanish"} |> Repo.insert!
%Language{id: 4, name: "French"} |> Repo.insert!
%Language{id: 5, name: "Swedish"} |> Repo.insert!
%Language{id: 6, name: "Italian"} |> Repo.insert!

# Creating Directors...
%Director{id: 1, name: "Lana Wachowski"} |> Repo.insert!
%Director{id: 2, name: "Lilly Wachowski"} |> Repo.insert!
%Director{id: 3, name: "James Cameron"} |> Repo.insert!
%Director{id: 4, name: "George Lucas"} |> Repo.insert!
%Director{id: 5, name: "Irvin Kershner"} |> Repo.insert!

# Creating Writers...
%Writer{id: 1, name: "Lana Wachowski"} |> Repo.insert!
%Writer{id: 2, name: "Lilly Wachowski"} |> Repo.insert!
%Writer{id: 3, name: "James Cameron"} |> Repo.insert!
%Writer{id: 4, name: "George Lucas"} |> Repo.insert!
%Writer{id: 5, name: "Leigh Brackett"} |> Repo.insert!
%Writer{id: 6, name: "Lawrence Kasdan"} |> Repo.insert!

# Creating Companies...
%Company{id: 1, name: "Warner Bros.", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Warner_Bros_logo.svg/800px-Warner_Bros_logo.svg.png"} |> Repo.insert!
%Company{id: 2, name: "Village Roadshow Pictures", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/en/c/c8/Village_roadshow_pictures_logo.jpg"} |> Repo.insert!
%Company{id: 3, name: "Silver Pictures", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/en/3/37/Silver_pictures_2.jpg"} |> Repo.insert!

%Company{id: 4, name: "Paramount Pictures", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/pt/f/fc/Paramountlogotipo.jpg"} |> Repo.insert!
%Company{id: 5, name: "20th Century Fox", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/pt/e/e0/20th_Century_Fox_logo.png"} |> Repo.insert!
%Company{id: 6, name: "Lightstorm Entertainment", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/en/4/42/Lightstorm_Entertainment_logo.jpg"} |> Repo.insert!

%Company{id: 7, name: "Lucasfilm", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Lucasfilm_logo.svg/800px-Lucasfilm_logo.svg.png"} |> Repo.insert!

# Creating Movies...
%Movie{
  id: 1,
  imdb_id: "tt0133093",
  title: "The Matrix",
  classification: 12,
  description: "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.",
  release_date: ~D[1999-03-31],
  revenue: 463517383.0,
  poster: "https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg"
} |> Repo.insert!

%Movie{
  id: 2,
  imdb_id: "tt0120338",
  title: "Titanic",
  classification: 12,
  description: "A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.",
  release_date: ~D[1997-12-19],
  revenue: 2187463944.0,
  poster: "https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX182_CR0,0,182,268_AL_.jpg"
} |> Repo.insert!

%Movie{
  id: 3,
  imdb_id: "tt0234215",
  title: "The Matrix Reloaded",
  classification: 12,
  description: "Following the events of Matrix (1999), Neo and the rebel leaders estimate they have 72 hours until 250,000 probes discover Zion and destroy it and its inhabitants. Neo must decide how he can save Trinity from a dark fate in his dreams.",
  release_date: ~D[2003-03-16],
  revenue: 828770175.0,
  poster: "https://m.media-amazon.com/images/M/MV5BODE0MzZhZTgtYzkwYi00YmI5LThlZWYtOWRmNWE5ODk0NzMxXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg"
} |> Repo.insert!

%Movie{
  id: 4,
  imdb_id: "tt0076759",
  title: "Star Wars: Episode IV - A New Hope",
  classification: 14,
  description: "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire's world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.",
  release_date: ~D[1977-05-25],
  revenue: 775512064.0,
  poster: "https://m.media-amazon.com/images/M/MV5BNzVlY2MwMjktM2E4OS00Y2Y3LWE3ZjctYzhkZGM3YzA1ZWM2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg"
} |> Repo.insert!

%Movie{
  id: 5,
  imdb_id: "tt0080684",
  title: "Star Wars: Episode V - The Empire Strikes Back",
  classification: 0,
  description: "After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader.",
  release_date: ~D[1980-05-17],
  revenue: 547879454.0,
  poster: "https://m.media-amazon.com/images/M/MV5BYmU1NDRjNDgtMzhiMi00NjZmLTg5NGItZDNiZjU5NTU4OTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg"
} |> Repo.insert!



# Creating Characters...
# The Matrix
%Character{protagonist: true, character: "Neo", movie_id: 1, actor_id: 1} |> Repo.insert!
%Character{protagonist: false, character: "Morpheus", movie_id: 1, actor_id: 2} |> Repo.insert!
%Character{protagonist: false, character: "Trinity", movie_id: 1, actor_id: 3} |> Repo.insert!
%Character{protagonist: false, character: "Agent Smith", movie_id: 1, actor_id: 4} |> Repo.insert!
%Character{protagonist: false, character: "Cypher", movie_id: 1, actor_id: 5} |> Repo.insert!
%Character{protagonist: false, character: "Tank", movie_id: 1, actor_id: 6} |> Repo.insert!
%Character{protagonist: false, character: "Apoc", movie_id: 1, actor_id: 7} |> Repo.insert!
%Character{protagonist: false, character: "Mouse", movie_id: 1, actor_id: 8} |> Repo.insert!
%Character{protagonist: false, character: "The Oracle", movie_id: 1, actor_id: 21} |> Repo.insert!
#Titanic
%Character{protagonist: true, character: "Jack Dawson", movie_id: 2, actor_id: 9} |> Repo.insert!
%Character{protagonist: true, character: "Rose Dewitt Bukater", movie_id: 2, actor_id: 10} |> Repo.insert!
%Character{protagonist: false, character: "Cal Hockley", movie_id: 2, actor_id: 11} |> Repo.insert!
%Character{protagonist: false, character: "Molly Brown", movie_id: 2, actor_id: 12} |> Repo.insert!
%Character{protagonist: false, character: "Ruth Dewitt Bukater", movie_id: 2, actor_id: 13} |> Repo.insert!
%Character{protagonist: false, character: "Old Rose", movie_id: 2, actor_id: 14} |> Repo.insert!
%Character{protagonist: false, character: "Brock Lovett", movie_id: 2, actor_id: 15} |> Repo.insert!
%Character{protagonist: false, character: "Captain Smith", movie_id: 2, actor_id: 16} |> Repo.insert!
%Character{protagonist: false, character: "Spicer Lovejoy", movie_id: 2, actor_id: 17} |> Repo.insert!
%Character{protagonist: false, character: "Thomas Andrews", movie_id: 2, actor_id: 18} |> Repo.insert!
%Character{protagonist: false, character: "Bruce Ismay", movie_id: 2, actor_id: 19} |> Repo.insert!
%Character{protagonist: false, character: "Lizzy Calvert", movie_id: 2, actor_id: 20} |> Repo.insert!
# The Matrix Reloaded
%Character{protagonist: true, character: "Neo", movie_id: 3, actor_id: 1} |> Repo.insert!
%Character{protagonist: false, character: "Morpheus", movie_id: 3, actor_id: 2} |> Repo.insert!
%Character{protagonist: false, character: "Trinity", movie_id: 3, actor_id: 3} |> Repo.insert!
%Character{protagonist: false, character: "Agent Smith", movie_id: 3, actor_id: 4} |> Repo.insert!
%Character{protagonist: false, character: "The Oracle", movie_id: 3, actor_id: 21} |> Repo.insert!
#Star Wars: Episode IV - A New Hope
%Character{protagonist: true, character: "Luke Skywalker", movie_id: 4, actor_id: 22} |> Repo.insert!
%Character{protagonist: true, character: "Han Solo", movie_id: 4, actor_id: 23} |> Repo.insert!
%Character{protagonist: true, character: "Princess Leia Organa", movie_id: 4, actor_id: 24} |> Repo.insert!
%Character{protagonist: false, character: "Grand Moff Tarkin", movie_id: 4, actor_id: 25} |> Repo.insert!
%Character{protagonist: false, character: "Ben Obi-Wan Kenobi", movie_id: 4, actor_id: 26} |> Repo.insert!
%Character{protagonist: false, character: "C-3PO", movie_id: 4, actor_id: 27} |> Repo.insert!
%Character{protagonist: false, character: "R2-D2", movie_id: 4, actor_id: 28} |> Repo.insert!
%Character{protagonist: false, character: "Chewbacca", movie_id: 4, actor_id: 29} |> Repo.insert!
%Character{protagonist: false, character: "Darth Vader", movie_id: 4, actor_id: 30} |> Repo.insert!
#Star Wars: Episode V - The Empire Strikes Back
%Character{protagonist: true, character: "Luke Skywalker", movie_id: 5, actor_id: 22} |> Repo.insert!
%Character{protagonist: true, character: "Han Solo", movie_id: 5, actor_id: 23} |> Repo.insert!
%Character{protagonist: true, character: "Princess Leia Organa", movie_id: 5, actor_id: 24} |> Repo.insert!
%Character{protagonist: false, character: "Ben Obi-Wan Kenobi", movie_id: 5, actor_id: 26} |> Repo.insert!
%Character{protagonist: false, character: "C-3PO", movie_id: 5, actor_id: 27} |> Repo.insert!
%Character{protagonist: false, character: "R2-D2", movie_id: 5, actor_id: 28} |> Repo.insert!
%Character{protagonist: false, character: "Chewbacca", movie_id: 5, actor_id: 29} |> Repo.insert!
%Character{protagonist: false, character: "Darth Vader", movie_id: 5, actor_id: 30} |> Repo.insert!
%Character{protagonist: false, character: "Lando Calrissian", movie_id: 5, actor_id: 31} |> Repo.insert!
%Character{protagonist: false, character: "Yoda", movie_id: 5, actor_id: 32} |> Repo.insert!
%Character{protagonist: false, character: "Boba Fett", movie_id: 5, actor_id: 33} |> Repo.insert!



# Creating M2M Associations
Repo.insert_all("movies_genres", [%{movie_id: 1, genre_id: 1}, %{movie_id: 1, genre_id: 2}])
Repo.insert_all("movies_genres", [%{movie_id: 2, genre_id: 3}, %{movie_id: 2, genre_id: 4}])
Repo.insert_all("movies_genres", [%{movie_id: 3, genre_id: 1}, %{movie_id: 3, genre_id: 2}])
Repo.insert_all("movies_genres", [%{movie_id: 4, genre_id: 1}, %{movie_id: 4, genre_id: 2}, %{movie_id: 4, genre_id: 5}, %{movie_id: 4, genre_id: 6}])
Repo.insert_all("movies_genres", [%{movie_id: 5, genre_id: 1}, %{movie_id: 5, genre_id: 2}, %{movie_id: 5, genre_id: 5}, %{movie_id: 5, genre_id: 6}])


Repo.insert_all("movies_languages", [%{movie_id: 1, language_id: 1}, %{movie_id: 1, language_id: 2}])
Repo.insert_all("movies_languages", [%{movie_id: 2, language_id: 1}, %{movie_id: 2, language_id: 2}, %{movie_id: 2, language_id: 3}, %{movie_id: 2, language_id: 4}, %{movie_id: 2, language_id: 5}, %{movie_id: 2, language_id: 6}])
Repo.insert_all("movies_languages", [%{movie_id: 3, language_id: 1}, %{movie_id: 3, language_id: 2}])
Repo.insert_all("movies_languages", [%{movie_id: 4, language_id: 1}, %{movie_id: 4, language_id: 2}, %{movie_id: 4, language_id: 3}])
Repo.insert_all("movies_languages", [%{movie_id: 5, language_id: 1}, %{movie_id: 5, language_id: 2}, %{movie_id: 5, language_id: 3}])


Repo.insert_all("movies_directors", [%{movie_id: 1, director_id: 1}, %{movie_id: 1, director_id: 2}])
Repo.insert_all("movies_directors", [%{movie_id: 2, director_id: 3}])
Repo.insert_all("movies_directors", [%{movie_id: 3, director_id: 1}, %{movie_id: 3, director_id: 2}])
Repo.insert_all("movies_directors", [%{movie_id: 4, director_id: 4}])
Repo.insert_all("movies_directors", [%{movie_id: 5, director_id: 5}])


Repo.insert_all("movies_writers", [%{movie_id: 1, writer_id: 1}, %{movie_id: 1, writer_id: 2}])
Repo.insert_all("movies_writers", [%{movie_id: 2, writer_id: 3}])
Repo.insert_all("movies_writers", [%{movie_id: 3, writer_id: 1}, %{movie_id: 3, writer_id: 2}])
Repo.insert_all("movies_writers", [%{movie_id: 4, writer_id: 4}])
Repo.insert_all("movies_writers", [%{movie_id: 5, writer_id: 4}, %{movie_id: 5, writer_id: 5}, %{movie_id: 5, writer_id: 6}])


Repo.insert_all("movies_companies", [%{movie_id: 1, company_id: 1}, %{movie_id: 1, company_id: 2}, %{movie_id: 1, company_id: 3}])
Repo.insert_all("movies_companies", [%{movie_id: 2, company_id: 4}, %{movie_id: 2, company_id: 5}, %{movie_id: 2, company_id: 6}])
Repo.insert_all("movies_companies", [%{movie_id: 3, company_id: 1}, %{movie_id: 3, company_id: 2}, %{movie_id: 3, company_id: 3}])
Repo.insert_all("movies_companies", [%{movie_id: 4, company_id: 7}])
Repo.insert_all("movies_companies", [%{movie_id: 5, company_id: 7}])


