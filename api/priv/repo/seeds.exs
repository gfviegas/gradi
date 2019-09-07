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
##i##
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

%Actor{id: 34, name: "Ian McDiarmid"} |> Repo.insert!

%Actor{id: 35, name: "Will Smith"} |> Repo.insert!
%Actor{id: 36, name: "Alice Braga"} |> Repo.insert!
%Actor{id: 37, name: "Charlie Tahan"} |> Repo.insert!
%Actor{id: 38, name: "Salli Richardson-Whitfield"} |> Repo.insert!
%Actor{id: 39, name: "Willow Smith"} |> Repo.insert!
%Actor{id: 40, name: "Darrel Foster"} |> Repo.insert!
%Actor{id: 41, name: "April Grace"} |> Repo.insert!

%Actor{id: 42, name: "Marlon Brando"} |> Repo.insert!
%Actor{id: 43, name: "Al Pacino"} |> Repo.insert!
%Actor{id: 44, name: "James Caan"} |> Repo.insert!
%Actor{id: 45, name: "Richard S. Castellano"} |> Repo.insert!
%Actor{id: 46, name: "Robert Duvall"} |> Repo.insert!
%Actor{id: 47, name: "Sterling Hayden"} |> Repo.insert!
%Actor{id: 48, name: "John Marley"} |> Repo.insert!
%Actor{id: 49, name: "Richard Conte"} |> Repo.insert!
%Actor{id: 50, name: "Al Lettieri"} |> Repo.insert!
%Actor{id: 51, name: "Diane Keaton"} |> Repo.insert!
%Actor{id: 52, name: "Abe Vigoda"} |> Repo.insert!
%Actor{id: 53, name: "Talia Shire"} |> Repo.insert!
%Actor{id: 54, name: "Gianni Russo"} |> Repo.insert!
%Actor{id: 55, name: "John Cazale"} |> Repo.insert!
%Actor{id: 56, name: "Rudy Bond"} |> Repo.insert!

%Actor{id: 57, name: "Tom Hanks"} |> Repo.insert!
%Actor{id: 58, name: "David Morse"} |> Repo.insert!
%Actor{id: 59, name: "Bonnie Hunt"} |> Repo.insert!
%Actor{id: 60, name: "Michael Clarke Duncan"} |> Repo.insert!
%Actor{id: 61, name: "James Cromwell"} |> Repo.insert!
%Actor{id: 62, name: "Michael Jeter"} |> Repo.insert!
%Actor{id: 63, name: "Graham Greene"} |> Repo.insert!
%Actor{id: 64, name: "Doug Hutchison"} |> Repo.insert!
%Actor{id: 65, name: "Sam Rockwell"} |> Repo.insert!
%Actor{id: 66, name: "Barry Pepper"} |> Repo.insert!
%Actor{id: 67, name: "Jeffrey DeMunn"} |> Repo.insert!
%Actor{id: 68, name: "Patricia Clarkson"} |> Repo.insert!
%Actor{id: 69, name: "Harry Dean Stanton"} |> Repo.insert!
%Actor{id: 70, name: "Dabbs Greer"} |> Repo.insert!
%Actor{id: 71, name: "Eve Brent"} |> Repo.insert!

%Actor{id: 72, name: "Christian Bale"} |> Repo.insert!
%Actor{id: 73, name: "Heath Ledger"} |> Repo.insert!
%Actor{id: 74, name: "Aaron Eckhart"} |> Repo.insert!
%Actor{id: 75, name: "Michael Caine"} |> Repo.insert!
%Actor{id: 76, name: "Maggie Gyllenhaal"} |> Repo.insert!
%Actor{id: 77, name: "Gary Oldman"} |> Repo.insert!
%Actor{id: 78, name: "Morgan Freeman"} |> Repo.insert!
%Actor{id: 79, name: "Monique Gabriela Curnen"} |> Repo.insert!
%Actor{id: 80, name: "Ron Dean"} |> Repo.insert!
%Actor{id: 81, name: "Cillian Murphy"} |> Repo.insert!
%Actor{id: 82, name: "Chin Han"} |> Repo.insert!
%Actor{id: 83, name: "Nestor Carbonell"} |> Repo.insert!
%Actor{id: 84, name: "Eric Roberts"} |> Repo.insert!
%Actor{id: 85, name: "Ritchie Coster"} |> Repo.insert!
%Actor{id: 86, name: "Anthony Michael Hall"} |> Repo.insert!

%Actor{id: 87, name: "Emma Stone"} |> Repo.insert!
%Actor{id: 88, name: "Viola Davis"} |> Repo.insert!
%Actor{id: 89, name: "Bryce Dallas Howard"} |> Repo.insert!
%Actor{id: 90, name: "Octavia Spencer"} |> Repo.insert!
%Actor{id: 91, name: "Jessica Chastain"} |> Repo.insert!
%Actor{id: 92, name: "Ahna O'Reilly"} |> Repo.insert!
%Actor{id: 93, name: "Allison Janney"} |> Repo.insert!
%Actor{id: 94, name: "Anna Camp"} |> Repo.insert!
%Actor{id: 95, name: "Eleanor Henry"} |> Repo.insert!
%Actor{id: 96, name: "Emma Henry"} |> Repo.insert!
%Actor{id: 97, name: "Chris Lowell"} |> Repo.insert!
%Actor{id: 98, name: "Cicely Tyson"} |> Repo.insert!
%Actor{id: 99, name: "Mike Vogel"} |> Repo.insert!
%Actor{id: 100, name: "Sissy Spacek"} |> Repo.insert!
%Actor{id: 101, name: "Brian Kerwin"} |> Repo.insert!

%Actor{id: 102, name: "Michael J. Fox"} |> Repo.insert!
%Actor{id: 103, name: "Christopher Lloyd"} |> Repo.insert!
%Actor{id: 104, name: "Lea Thompson"} |> Repo.insert!
%Actor{id: 105, name: "Crispin Glover"} |> Repo.insert!
%Actor{id: 106, name: "Thomas F. Wilson"} |> Repo.insert!
%Actor{id: 107, name: "Claudia Wells"} |> Repo.insert!
%Actor{id: 108, name: "Marc McClure"} |> Repo.insert!
%Actor{id: 109, name: "Wendie Jo Sperber"} |> Repo.insert!
%Actor{id: 110, name: "George DiCenzo"} |> Repo.insert!
%Actor{id: 111, name: "Frances Lee McCain"} |> Repo.insert!
%Actor{id: 112, name: "James Tolkan"} |> Repo.insert!
%Actor{id: 113, name: "J.J. Cohen"} |> Repo.insert!
%Actor{id: 114, name: "Casey Siemaszko"} |> Repo.insert!
%Actor{id: 115, name: "Billy Zane"} |> Repo.insert!
%Actor{id: 116, name: "Harry Waters Jr."} |> Repo.insert!

%Actor{id: 117, name: "Dee Wallace"} |> Repo.insert!
%Actor{id: 118, name: "Henry Thomas"} |> Repo.insert!
%Actor{id: 119, name: "Peter Coyote"} |> Repo.insert!
%Actor{id: 120, name: "Robert MacNaughton"} |> Repo.insert!
%Actor{id: 121, name: "Drew Barrymore"} |> Repo.insert!
%Actor{id: 122, name: "K.C. Martel"} |> Repo.insert!
%Actor{id: 123, name: "Sean Frye"} |> Repo.insert!
%Actor{id: 124, name: "C. Thomas Howell"} |> Repo.insert!
%Actor{id: 125, name: "Erika Eleniak"} |> Repo.insert!
%Actor{id: 126, name: "David M. O'Dell"} |> Repo.insert!
%Actor{id: 127, name: "Richard Swingler"} |> Repo.insert!
%Actor{id: 128, name: "Frank Toth"} |> Repo.insert!
%Actor{id: 129, name: "Robert Barton"} |> Repo.insert!
%Actor{id: 130, name: "Michael Darrell"} |> Repo.insert!
%Actor{id: 131, name: "David Berkson"} |> Repo.insert!

%Actor{id: 132, name: "Alan Howard"} |> Repo.insert!
%Actor{id: 133, name: "Noel Appleby"} |> Repo.insert!
%Actor{id: 134, name: "Sean Astin"} |> Repo.insert!
%Actor{id: 135, name: "Sala Baker"} |> Repo.insert!
%Actor{id: 136, name: "Sean Bean"} |> Repo.insert!
%Actor{id: 137, name: "Cate Blanchett"} |> Repo.insert!
%Actor{id: 138, name: "Orlando Bloom"} |> Repo.insert!
%Actor{id: 139, name: "Billy Boyd"} |> Repo.insert!
%Actor{id: 140, name: "Marton Csokas"} |> Repo.insert!
%Actor{id: 141, name: "Megan Edwards"} |> Repo.insert!
%Actor{id: 142, name: "Michael Elsworth"} |> Repo.insert!
%Actor{id: 143, name: "Mark Ferguson"} |> Repo.insert!
%Actor{id: 144, name: "Ian Holm"} |> Repo.insert!
%Actor{id: 145, name: "Christopher Lee"} |> Repo.insert!
%Actor{id: 146, name: "Elijah Wood"} |> Repo.insert!

%Actor{id: 147, name: "Jamie Foxx"} |> Repo.insert!
%Actor{id: 148, name: "Christoph Waltz"} |> Repo.insert!
%Actor{id: 149, name: "Kerry Washington"} |> Repo.insert!
%Actor{id: 150, name: "Samuel L. Jackson"} |> Repo.insert!
%Actor{id: 151, name: "Walton Goggins"} |> Repo.insert!
%Actor{id: 152, name: "Dennis Christopher"} |> Repo.insert!
%Actor{id: 153, name: "James Remar"} |> Repo.insert!
%Actor{id: 154, name: "David Steen"} |> Repo.insert!
%Actor{id: 155, name: "Dana Gourrier"} |> Repo.insert!
%Actor{id: 156, name: "Nichole Galicia"} |> Repo.insert!
%Actor{id: 157, name: "Laura Cayouette"} |> Repo.insert!
%Actor{id: 158, name: "Ato Essandoh"} |> Repo.insert!
%Actor{id: 159, name: "Sammi Rotibi"} |> Repo.insert!
%Actor{id: 160, name: "Clay Donahue Fontenot"} |> Repo.insert!



# Creating Genres...
##i##
%Genre{id: 1, name: "Action"} |> Repo.insert!
%Genre{id: 2, name: "Sci-fi"} |> Repo.insert!
%Genre{id: 3, name: "Drama"} |> Repo.insert!
%Genre{id: 4, name: "Romance"} |> Repo.insert!
%Genre{id: 5, name: "Adventure"} |> Repo.insert!
%Genre{id: 6, name: "Fantasy"} |> Repo.insert!
%Genre{id: 7, name: "Thriller"} |> Repo.insert!
%Genre{id: 8, name: "Crime"} |> Repo.insert!
%Genre{id: 9, name: "Mystery"} |> Repo.insert!
%Genre{id: 10, name: "Comedy"} |> Repo.insert!
%Genre{id: 11, name: "Family"} |> Repo.insert!
%Genre{id: 12, name: "Western"} |> Repo.insert!

# Creating Languages...
##i##
%Language{id: 1, name: "English"} |> Repo.insert!
%Language{id: 2, name: "Portuguese"} |> Repo.insert!
%Language{id: 3, name: "Spanish"} |> Repo.insert!
%Language{id: 4, name: "French"} |> Repo.insert!
%Language{id: 5, name: "Swedish"} |> Repo.insert!
%Language{id: 6, name: "Italian"} |> Repo.insert!
%Language{id: 7, name: "Latin"} |> Repo.insert!
%Language{id: 8, name: "Mandarin"} |> Repo.insert!
%Language{id: 9, name: "Sindarin"} |> Repo.insert!
%Language{id: 10, name: "German"} |> Repo.insert!

# Creating Directors...
##i##
%Director{id: 1, name: "Lana Wachowski"} |> Repo.insert!
%Director{id: 2, name: "Lilly Wachowski"} |> Repo.insert!
%Director{id: 3, name: "James Cameron"} |> Repo.insert!
%Director{id: 4, name: "George Lucas"} |> Repo.insert!
%Director{id: 5, name: "Irvin Kershner"} |> Repo.insert!
%Director{id: 6, name: "Richard Marquand"} |> Repo.insert!
%Director{id: 7, name: "Francis Lawrence"} |> Repo.insert!
%Director{id: 8, name: "Francis Ford Coppola"} |> Repo.insert!
%Director{id: 9, name: "Frank Darabont"} |> Repo.insert!
%Director{id: 10, name: "Christopher Nolan"} |> Repo.insert!
%Director{id: 11, name: "Tate Taylor"} |> Repo.insert!
%Director{id: 12, name: "Robert Zemeckis"} |> Repo.insert!
%Director{id: 13, name: "Steven Spielberg"} |> Repo.insert!
%Director{id: 14, name: "Peter Jackson"} |> Repo.insert!
%Director{id: 15, name: "Quentin Tarantino"} |> Repo.insert!

# Creating Writers...
##i##
%Writer{id: 1, name: "Lana Wachowski"} |> Repo.insert!
%Writer{id: 2, name: "Lilly Wachowski"} |> Repo.insert!
%Writer{id: 3, name: "James Cameron"} |> Repo.insert!
%Writer{id: 4, name: "George Lucas"} |> Repo.insert!
%Writer{id: 5, name: "Leigh Brackett"} |> Repo.insert!
%Writer{id: 6, name: "Lawrence Kasdan"} |> Repo.insert!
%Writer{id: 7, name: "Mark Protosevich"} |> Repo.insert!
%Writer{id: 8, name: "Akiva Goldsman"} |> Repo.insert!
%Writer{id: 9, name: "Richard Matheson"} |> Repo.insert!
%Writer{id: 10, name: "Mario Puzo"} |> Repo.insert!
%Writer{id: 11, name: "Francis Ford Coppola"} |> Repo.insert!
%Writer{id: 12, name: "Stephen King"} |> Repo.insert!
%Writer{id: 13, name: "Frank Darabont"} |> Repo.insert!
%Writer{id: 14, name: "Jonathan Nolan"} |> Repo.insert!
%Writer{id: 15, name: "Christopher Nolan"} |> Repo.insert!
%Writer{id: 16, name: "David S. Goyer"} |> Repo.insert!
%Writer{id: 17, name: "Bob Kane"} |> Repo.insert!
%Writer{id: 18, name: "Tate Taylor"} |> Repo.insert!
%Writer{id: 19, name: "Kathryn Stockett"} |> Repo.insert!
%Writer{id: 20, name: "Robert Zemeckis"} |> Repo.insert!
%Writer{id: 21, name: "Bob Gale"} |> Repo.insert!
%Writer{id: 22, name: "Melissa Mathison"} |> Repo.insert!
%Writer{id: 23, name: "J.R.R. Tolkien"} |> Repo.insert!
%Writer{id: 24, name: "Fran Walsh"} |> Repo.insert!
%Writer{id: 25, name: "Philippa Boyens"} |> Repo.insert!
%Writer{id: 26, name: "Peter Jackson"} |> Repo.insert!
%Writer{id: 27, name: "Quentin Tarantino"} |> Repo.insert!

# Creating Companies...
##i##
%Company{id: 1, name: "Warner Bros.", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Warner_Bros_logo.svg/800px-Warner_Bros_logo.svg.png"} |> Repo.insert!
%Company{id: 2, name: "Village Roadshow Pictures", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/en/c/c8/Village_roadshow_pictures_logo.jpg"} |> Repo.insert!
%Company{id: 3, name: "Silver Pictures", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/en/3/37/Silver_pictures_2.jpg"} |> Repo.insert!

%Company{id: 4, name: "Paramount Pictures", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/pt/f/fc/Paramountlogotipo.jpg"} |> Repo.insert!
%Company{id: 5, name: "20th Century Fox", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/pt/e/e0/20th_Century_Fox_logo.png"} |> Repo.insert!
%Company{id: 6, name: "Lightstorm Entertainment", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/en/4/42/Lightstorm_Entertainment_logo.jpg"} |> Repo.insert!

%Company{id: 7, name: "Lucasfilm", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Lucasfilm_logo.svg/800px-Lucasfilm_logo.svg.png"} |> Repo.insert!

%Company{id: 8, name: "Paramount Pictures", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/pt/f/fc/Paramountlogotipo.jpg"} |> Repo.insert!

%Company{id: 9, name: "Castle Rock Entertainment", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/en/f/fb/Castle_Rock_Entertainment_logo.jpg"} |> Repo.insert!

%Company{id: 10, name: "DC Comics", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/DC_Comics_logo.png/800px-DC_Comics_logo.png"} |> Repo.insert!
%Company{id: 11, name: "Legendary Entertainment", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/en/thumb/d/d7/Legendary_Pictures_logo.svg/1024px-Legendary_Pictures_logo.svg.png"} |> Repo.insert!
%Company{id: 12, name: "Syncopy Films Inc.", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/en/6/6a/SyncopyInc._logo.png"} |> Repo.insert!

%Company{id: 13, name: "DreamWorks Pictures", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/DreamWorks_Pictures.svg/1920px-DreamWorks_Pictures.svg.png"} |> Repo.insert!
%Company{id: 14, name: "Reliance Entertainment Pvt Ltd", country: "India", logo: "https://upload.wikimedia.org/wikipedia/en/thumb/b/bc/Relianceent.jpg/1280px-Relianceent.jpg"} |> Repo.insert!

%Company{id: 15, name: "Amblin Entertainment", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/en/thumb/5/5c/Amblin_Entertainment_logo.svg/1024px-Amblin_Entertainment_logo.svg.png"} |> Repo.insert!
%Company{id: 16, name: "Universal Pictures", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/en/thumb/a/a1/Universal_Studios.svg/800px-Universal_Studios.svg.png"} |> Repo.insert!

%Company{id: 17, name: "New Line Cinema", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/New_Line_Cinema.svg/800px-New_Line_Cinema.svg.png"} |> Repo.insert!
%Company{id: 18, name: "WingNut Films", country: "New Zealand", logo: "https://vignette.wikia.nocookie.net/wingnut-films/images/d/d7/WingNut_Films_Logo.gif/revision/latest?cb=20181106234758"} |> Repo.insert!

%Company{id: 19, name: "A Band Apart Films", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/en/4/4c/A_Band_Apart_logo.png"} |> Repo.insert!
%Company{id: 20, name: "Columbia Pictures", country: "United States", logo: "https://upload.wikimedia.org/wikipedia/en/thumb/2/28/Columbia_Pictures_Logo.svg/1920px-Columbia_Pictures_Logo.svg.png"} |> Repo.insert!

# Creating Movies...
##i##
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

%Movie{
  id: 6,
  imdb_id: "tt0086190",
  title: "Star Wars: Episode VI - Return of the Jedi",
  classification: 0,
  description: "After a daring mission to rescue Han Solo from Jabba the Hutt, the Rebels dispatch to Endor to destroy the second Death Star. Meanwhile, Luke struggles to help Darth Vader back from the dark side without falling into the Emperor's trap.",
  release_date: ~D[1983-05-25],
  revenue: 475347111.0,
  poster: "https://m.media-amazon.com/images/M/MV5BOWZlMjFiYzgtMTUzNC00Y2IzLTk1NTMtZmNhMTczNTk0ODk1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg"
} |> Repo.insert!

%Movie{
  id: 7,
  imdb_id: "tt0480249",
  title: "I Am Legend",
  classification: 14,
  description: "Years after a plague kills most of humanity and transforms the rest into monsters, the sole survivor in New York City struggles valiantly to find a cure.",
  release_date: ~D[2007-12-14],
  revenue: 585349010.0,
  poster: "https://m.media-amazon.com/images/M/MV5BYTE1ZTBlYzgtNmMyNS00ZTQ2LWE4NjEtZjUxNDJkNTg2MzlhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg"
} |> Repo.insert!

%Movie{
  id: 8,
  imdb_id: "tt0068646",
  title: "The Godfather",
  classification: 14,
  description: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.",
  release_date: ~D[1972-03-24],
  revenue: 246120974.0,
  poster: "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg",
} |> Repo.insert!

%Movie{
  id: 9,
  imdb_id: "tt0120689",
  title: "The Green Mile",
  classification: 14,
  description: "The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.",
  release_date: ~D[1999-12-10],
  revenue: 286801374.0,
  poster: "https://m.media-amazon.com/images/M/MV5BMTUxMzQyNjA5MF5BMl5BanBnXkFtZTYwOTU2NTY3._V1_SX300.jpg",
} |> Repo.insert!

%Movie{
  id: 10,
  imdb_id: "tt0468569",
  title: "The Dark Knight",
  classification: 12,
  description: "When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
  release_date: ~D[2008-07-18],
  revenue: 1004934033.0,
  poster: "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SX300.jpg",
} |> Repo.insert!

%Movie{
  id: 11,
  imdb_id: "tt1454029",
  title: "The Help",
  classification: 12,
  description: "An aspiring author during the civil rights movement of the 1960s decides to write a book detailing the African American maids' point of view on the white families for which they work, and the hardships they go through on a daily basis.",
  release_date: ~D[2011-08-10],
  revenue: 216639112.0,
  poster: "https://m.media-amazon.com/images/M/MV5BMTM5OTMyMjIxOV5BMl5BanBnXkFtZTcwNzU4MjIwNQ@@._V1_SX300.jpg",
} |> Repo.insert!

%Movie{
  id: 12,
  imdb_id: "tt0088763",
  title: "Back to the Future",
  classification: 0,
  description: "Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the maverick scientist Doc Brown.",
  release_date: ~D[1985-07-03],
  revenue: 388355305.0,
  poster: "https://m.media-amazon.com/images/M/MV5BZmU0M2Y1OGUtZjIxNi00ZjBkLTg1MjgtOWIyNThiZWIwYjRiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg",
} |> Repo.insert!

%Movie{
  id: 13,
  imdb_id: "tt0083866",
  title: "E.T. the Extra-Terrestrial",
  classification: 0,
  description: "A troubled child summons the courage to help a friendly alien escape Earth and return to his home world.",
  release_date: ~D[1982-06-11],
  revenue: 792910554.0,
  poster: "https://m.media-amazon.com/images/M/MV5BMTQ2ODFlMDAtNzdhOC00ZDYzLWE3YTMtNDU4ZGFmZmJmYTczXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg",
} |> Repo.insert!

%Movie{
  id: 14,
  imdb_id: "tt0120737",
  title: "The Lord of the Rings: The Fellowship of the Ring",
  classification: 12,
  description: "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.",
  release_date: ~D[2001-12-19],
  revenue: 873174218.0,
  poster: "https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_SX300.jpg",
} |> Repo.insert!

%Movie{
  id: 15,
  imdb_id: "tt1853728",
  title: "Django Unchained",
  classification: 16,
  description: "With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.",
  release_date: ~D[2012-12-25],
  revenue: 425368238.0,
  poster: "https://m.media-amazon.com/images/M/MV5BMjIyNTQ5NjQ1OV5BMl5BanBnXkFtZTcwODg1MDU4OA@@._V1_SX300.jpg",
} |> Repo.insert!

# Creating Characters...
##i##
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
# Titanic
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
# Star Wars: Episode IV - A New Hope
%Character{protagonist: true, character: "Luke Skywalker", movie_id: 4, actor_id: 22} |> Repo.insert!
%Character{protagonist: true, character: "Han Solo", movie_id: 4, actor_id: 23} |> Repo.insert!
%Character{protagonist: true, character: "Princess Leia Organa", movie_id: 4, actor_id: 24} |> Repo.insert!
%Character{protagonist: false, character: "Grand Moff Tarkin", movie_id: 4, actor_id: 25} |> Repo.insert!
%Character{protagonist: false, character: "Ben Obi-Wan Kenobi", movie_id: 4, actor_id: 26} |> Repo.insert!
%Character{protagonist: false, character: "C-3PO", movie_id: 4, actor_id: 27} |> Repo.insert!
%Character{protagonist: false, character: "R2-D2", movie_id: 4, actor_id: 28} |> Repo.insert!
%Character{protagonist: false, character: "Chewbacca", movie_id: 4, actor_id: 29} |> Repo.insert!
%Character{protagonist: false, character: "Darth Vader", movie_id: 4, actor_id: 30} |> Repo.insert!
# Star Wars: Episode V - The Empire Strikes Back
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
# Star Wars: Episode VI - Return of the Jedi
%Character{protagonist: true, character: "Luke Skywalker", movie_id: 6, actor_id: 22} |> Repo.insert!
%Character{protagonist: true, character: "Han Solo", movie_id: 6, actor_id: 23} |> Repo.insert!
%Character{protagonist: true, character: "Princess Leia Organa", movie_id: 6, actor_id: 24} |> Repo.insert!
%Character{protagonist: false, character: "Ben Obi-Wan Kenobi", movie_id: 6, actor_id: 26} |> Repo.insert!
%Character{protagonist: false, character: "C-3PO", movie_id: 6, actor_id: 27} |> Repo.insert!
%Character{protagonist: false, character: "R2-D2", movie_id: 6, actor_id: 28} |> Repo.insert!
%Character{protagonist: false, character: "Chewbacca", movie_id: 6, actor_id: 29} |> Repo.insert!
%Character{protagonist: false, character: "Darth Vader", movie_id: 6, actor_id: 30} |> Repo.insert!
%Character{protagonist: false, character: "Lando Calrissian", movie_id: 6, actor_id: 31} |> Repo.insert!
%Character{protagonist: false, character: "Yoda", movie_id: 6, actor_id: 32} |> Repo.insert!
%Character{protagonist: false, character: "Boba Fett", movie_id: 6, actor_id: 33} |> Repo.insert!
%Character{protagonist: false, character: "The Emperor", movie_id: 6, actor_id: 34} |> Repo.insert!
# I am Legend
%Character{protagonist: true, character: "Robert Neville", movie_id: 7, actor_id: 35} |> Repo.insert!
%Character{protagonist: false, character: "Anna", movie_id: 7, actor_id: 36} |> Repo.insert!
%Character{protagonist: false, character: "Ethan", movie_id: 7, actor_id: 37} |> Repo.insert!
%Character{protagonist: false, character: "Zoe Neville", movie_id: 7, actor_id: 38} |> Repo.insert!
%Character{protagonist: false, character: "Marley Neville", movie_id: 7, actor_id: 39} |> Repo.insert!
%Character{protagonist: false, character: "Mike - Military Escort", movie_id: 7, actor_id: 40} |> Repo.insert!
%Character{protagonist: false, character: "TV Personality", movie_id: 7, actor_id: 41} |> Repo.insert!
# The Godfather
%Character{protagonist: true, character: "Don Vito Corleone", movie_id: 8, actor_id: 42} |> Repo.insert!
%Character{protagonist: true, character: "Michael Corleone", movie_id: 8, actor_id: 43} |> Repo.insert!
%Character{protagonist: true, character: "Sonny Corleone", movie_id: 8, actor_id: 44} |> Repo.insert!
%Character{protagonist: false, character: "Clemenza", movie_id: 8, actor_id: 45} |> Repo.insert!
%Character{protagonist: false, character: "Tom Hagen", movie_id: 8, actor_id: 46} |> Repo.insert!
%Character{protagonist: false, character: "Capt. McCluskey", movie_id: 8, actor_id: 47} |> Repo.insert!
%Character{protagonist: false, character: "Jack Woltz", movie_id: 8, actor_id: 48} |> Repo.insert!
%Character{protagonist: false, character: "Barzini", movie_id: 8, actor_id: 49} |> Repo.insert!
%Character{protagonist: false, character: "Sollozzo", movie_id: 8, actor_id: 50} |> Repo.insert!
%Character{protagonist: false, character: "Kay Adams", movie_id: 8, actor_id: 51} |> Repo.insert!
%Character{protagonist: false, character: "Tessio", movie_id: 8, actor_id: 52} |> Repo.insert!
%Character{protagonist: false, character: "Connie", movie_id: 8, actor_id: 53} |> Repo.insert!
%Character{protagonist: false, character: "Carlo", movie_id: 8, actor_id: 54} |> Repo.insert!
%Character{protagonist: false, character: "Fredo", movie_id: 8, actor_id: 55} |> Repo.insert!
%Character{protagonist: false, character: "Cuneo", movie_id: 8, actor_id: 56} |> Repo.insert!
# The Green Mile
%Character{protagonist: true, character: "Paul Edgecomb", movie_id: 9, actor_id: 57} |> Repo.insert!
%Character{protagonist: true, character: "Brutus 'Brutal' Howell", movie_id: 9, actor_id: 58} |> Repo.insert!
%Character{protagonist: true, character: "Jan Edgecomb", movie_id: 9, actor_id: 59} |> Repo.insert!
%Character{protagonist: true, character: "John Coffey", movie_id: 9, actor_id: 60} |> Repo.insert!
%Character{protagonist: false, character: "Warden Hal Moores", movie_id: 9, actor_id: 61} |> Repo.insert!
%Character{protagonist: false, character: "Eduard Delacroix", movie_id: 9, actor_id: 62} |> Repo.insert!
%Character{protagonist: false, character: "Arlen Bitterbuck", movie_id: 9, actor_id: 63} |> Repo.insert!
%Character{protagonist: false, character: "Percy Wetmore", movie_id: 9, actor_id: 64} |> Repo.insert!
%Character{protagonist: false, character: "'Wild Bill' Wharton", movie_id: 9, actor_id: 65} |> Repo.insert!
%Character{protagonist: false, character: "Dean Stanton", movie_id: 9, actor_id: 66} |> Repo.insert!
%Character{protagonist: false, character: "Harry Terwilliger", movie_id: 9, actor_id: 67} |> Repo.insert!
%Character{protagonist: false, character: "Melinda Moores", movie_id: 9, actor_id: 68} |> Repo.insert!
%Character{protagonist: false, character: "Toot-Toot", movie_id: 9, actor_id: 69} |> Repo.insert!
%Character{protagonist: false, character: "Old Paul Edgecomb", movie_id: 9, actor_id: 70} |> Repo.insert!
%Character{protagonist: false, character: "Elaine Connelly", movie_id: 9, actor_id: 71} |> Repo.insert!
# The Dark Knight
%Character{protagonist: true, character: "Bruce Wayne", movie_id: 10, actor_id: 72} |> Repo.insert!
%Character{protagonist: false, character: "Joker", movie_id: 10, actor_id: 73} |> Repo.insert!
%Character{protagonist: false, character: "Harvey Dent", movie_id: 10, actor_id: 74} |> Repo.insert!
%Character{protagonist: false, character: "Alfred", movie_id: 10, actor_id: 75} |> Repo.insert!
%Character{protagonist: false, character: "Rachel", movie_id: 10, actor_id: 76} |> Repo.insert!
%Character{protagonist: false, character: "Gordon", movie_id: 10, actor_id: 77} |> Repo.insert!
%Character{protagonist: false, character: "Lucius Fox", movie_id: 10, actor_id: 78} |> Repo.insert!
%Character{protagonist: false, character: "Ramirez", movie_id: 10, actor_id: 79} |> Repo.insert!
%Character{protagonist: false, character: "Wuertz", movie_id: 10, actor_id: 80} |> Repo.insert!
%Character{protagonist: false, character: "Scarecrow", movie_id: 10, actor_id: 81} |> Repo.insert!
%Character{protagonist: false, character: "Lau", movie_id: 10, actor_id: 82} |> Repo.insert!
%Character{protagonist: false, character: "Mayor", movie_id: 10, actor_id: 83} |> Repo.insert!
%Character{protagonist: false, character: "Maroni", movie_id: 10, actor_id: 84} |> Repo.insert!
%Character{protagonist: false, character: "Chechen", movie_id: 10, actor_id: 85} |> Repo.insert!
%Character{protagonist: false, character: "Mike Engel", movie_id: 10, actor_id: 86} |> Repo.insert!
# The Help
%Character{protagonist: true, character: "Skeeter Phelan", movie_id: 11, actor_id: 87} |> Repo.insert!
%Character{protagonist: false, character: "Aibileen Clark", movie_id: 11, actor_id: 88} |> Repo.insert!
%Character{protagonist: false, character: "Hilly Holbrook", movie_id: 11, actor_id: 89} |> Repo.insert!
%Character{protagonist: false, character: "Minny Jackson", movie_id: 11, actor_id: 90} |> Repo.insert!
%Character{protagonist: false, character: "Celia Foote", movie_id: 11, actor_id: 91} |> Repo.insert!
%Character{protagonist: false, character: "Elizabeth Leefolt", movie_id: 11, actor_id: 92} |> Repo.insert!
%Character{protagonist: false, character: "Charlotte Phelan", movie_id: 11, actor_id: 93} |> Repo.insert!
%Character{protagonist: false, character: "Jolene French", movie_id: 11, actor_id: 94} |> Repo.insert!
%Character{protagonist: false, character: "Mae Mobley", movie_id: 11, actor_id: 95} |> Repo.insert!
%Character{protagonist: false, character: "Mae Mobley", movie_id: 11, actor_id: 96} |> Repo.insert!
%Character{protagonist: false, character: "Stuart Whitworth", movie_id: 11, actor_id: 97} |> Repo.insert!
%Character{protagonist: false, character: "Constantine Jefferson", movie_id: 11, actor_id: 98} |> Repo.insert!
%Character{protagonist: false, character: "Johnny Foote", movie_id: 11, actor_id: 99} |> Repo.insert!
%Character{protagonist: false, character: "Missus Walters", movie_id: 11, actor_id: 100} |> Repo.insert!
%Character{protagonist: false, character: "Robert Phelan", movie_id: 11, actor_id: 101} |> Repo.insert!
# Back to the Future
%Character{protagonist: true, character: "Marty McFly", movie_id: 12, actor_id: 102} |> Repo.insert!
%Character{protagonist: true, character: "Dr. Emmett Brown", movie_id: 12, actor_id: 103} |> Repo.insert!
%Character{protagonist: false, character: "Lorraine Baines", movie_id: 12, actor_id: 104} |> Repo.insert!
%Character{protagonist: false, character: "George McFly", movie_id: 12, actor_id: 105} |> Repo.insert!
%Character{protagonist: false, character: "Biff Tannen", movie_id: 12, actor_id: 106} |> Repo.insert!
%Character{protagonist: false, character: "Jennifer Parker", movie_id: 12, actor_id: 107} |> Repo.insert!
%Character{protagonist: false, character: "Dave McFly", movie_id: 12, actor_id: 108} |> Repo.insert!
%Character{protagonist: false, character: "Linda McFly", movie_id: 12, actor_id: 109} |> Repo.insert!
%Character{protagonist: false, character: "Sam Baines", movie_id: 12, actor_id: 110} |> Repo.insert!
%Character{protagonist: false, character: "Stella Baines", movie_id: 12, actor_id: 111} |> Repo.insert!
%Character{protagonist: false, character: "Mr. Strickland", movie_id: 12, actor_id: 112} |> Repo.insert!
%Character{protagonist: false, character: "Skinhead", movie_id: 12, actor_id: 113} |> Repo.insert!
%Character{protagonist: false, character: "3-D", movie_id: 12, actor_id: 114} |> Repo.insert!
%Character{protagonist: false, character: "Match", movie_id: 12, actor_id: 115} |> Repo.insert!
%Character{protagonist: false, character: "Marvin Berry", movie_id: 12, actor_id: 116} |> Repo.insert!
# E.T. the Extra-Terrestrial
%Character{protagonist: true, character: "Mary", movie_id: 13, actor_id: 117} |> Repo.insert!
%Character{protagonist: true, character: "Elliott", movie_id: 13, actor_id: 118} |> Repo.insert!
%Character{protagonist: true, character: "Keys", movie_id: 13, actor_id: 119} |> Repo.insert!
%Character{protagonist: true, character: "Michael", movie_id: 13, actor_id: 120} |> Repo.insert!
%Character{protagonist: false, character: "Gertie", movie_id: 13, actor_id: 121} |> Repo.insert!
%Character{protagonist: false, character: "Greg", movie_id: 13, actor_id: 122} |> Repo.insert!
%Character{protagonist: false, character: "Steve", movie_id: 13, actor_id: 123} |> Repo.insert!
%Character{protagonist: false, character: "Tyler", movie_id: 13, actor_id: 124} |> Repo.insert!
%Character{protagonist: false, character: "Pretty Girl", movie_id: 13, actor_id: 125} |> Repo.insert!
%Character{protagonist: false, character: "Schoolboy ", movie_id: 13, actor_id: 126} |> Repo.insert!
%Character{protagonist: false, character: "Science Teacher", movie_id: 13, actor_id: 127} |> Repo.insert!
%Character{protagonist: false, character: "Policeman", movie_id: 13, actor_id: 128} |> Repo.insert!
%Character{protagonist: false, character: "Ultra Sound Man", movie_id: 13, actor_id: 129} |> Repo.insert!
%Character{protagonist: false, character: "Van Man", movie_id: 13, actor_id: 130} |> Repo.insert!
%Character{protagonist: false, character: "Medical Unit ", movie_id: 13, actor_id: 131} |> Repo.insert!
# The Lord of the Rings: The Fellowship of the Ring
%Character{protagonist: true, character: "Voice of the Ring", movie_id: 14, actor_id: 132} |> Repo.insert!
%Character{protagonist: true, character: "Everard Proudfoot", movie_id: 14, actor_id: 133} |> Repo.insert!
%Character{protagonist: true, character: "Sam", movie_id: 14, actor_id: 134} |> Repo.insert!
%Character{protagonist: false, character: "Sauron", movie_id: 14, actor_id: 135} |> Repo.insert!
%Character{protagonist: true, character: "Boromir", movie_id: 14, actor_id: 136} |> Repo.insert!
%Character{protagonist: true, character: "Galadriel", movie_id: 14, actor_id: 137} |> Repo.insert!
%Character{protagonist: true, character: "Legolas", movie_id: 14, actor_id: 138} |> Repo.insert!
%Character{protagonist: false, character: "Pippin", movie_id: 14, actor_id: 139} |> Repo.insert!
%Character{protagonist: false, character: "Celeborn", movie_id: 14, actor_id: 140} |> Repo.insert!
%Character{protagonist: false, character: "Mrs. Proudfoot", movie_id: 14, actor_id: 141} |> Repo.insert!
%Character{protagonist: false, character: "Gondorian Archivist", movie_id: 14, actor_id: 142} |> Repo.insert!
%Character{protagonist: false, character: "Gil-galad", movie_id: 14, actor_id: 143} |> Repo.insert!
%Character{protagonist: false, character: "Bilbo", movie_id: 14, actor_id: 144} |> Repo.insert!
%Character{protagonist: false, character: "Saruman", movie_id: 14, actor_id: 145} |> Repo.insert!
%Character{protagonist: true, character: "Frodo", movie_id: 14, actor_id: 146} |> Repo.insert!
# Django Unchained
%Character{protagonist: false, character: "Django", movie_id: 15, actor_id: 147} |> Repo.insert!
%Character{protagonist: false, character: "Dr. King Schultz", movie_id: 15, actor_id: 148} |> Repo.insert!
%Character{protagonist: false, character: "Calvin Candie", movie_id: 15, actor_id: 9} |> Repo.insert!
%Character{protagonist: false, character: "Broomhilda von Shaft", movie_id: 15, actor_id: 149} |> Repo.insert!
%Character{protagonist: false, character: "Stephen", movie_id: 15, actor_id: 150} |> Repo.insert!
%Character{protagonist: false, character: "Billy Crash", movie_id: 15, actor_id: 151} |> Repo.insert!
%Character{protagonist: false, character: "Leonide Moguy", movie_id: 15, actor_id: 152} |> Repo.insert!
%Character{protagonist: false, character: "Butch Pooch", movie_id: 15, actor_id: 153} |> Repo.insert!
%Character{protagonist: false, character: "Mr. Stonesipher", movie_id: 15, actor_id: 154} |> Repo.insert!
%Character{protagonist: false, character: "Cora", movie_id: 15, actor_id: 155} |> Repo.insert!
%Character{protagonist: false, character: "Sheba", movie_id: 15, actor_id: 156} |> Repo.insert!
%Character{protagonist: false, character: "Lara Lee Candie-Fitzwilly", movie_id: 15, actor_id: 157} |> Repo.insert!
%Character{protagonist: false, character: "D'Artagnan", movie_id: 15, actor_id: 158} |> Repo.insert!
%Character{protagonist: false, character: "Rodney", movie_id: 15, actor_id: 159} |> Repo.insert!
%Character{protagonist: false, character: "Big Fred's Opponent", movie_id: 15, actor_id: 160} |> Repo.insert!


# Creating M2M Associations
##i##
Repo.insert_all("movies_genres", [%{movie_id: 1, genre_id: 1}, %{movie_id: 1, genre_id: 2}])
Repo.insert_all("movies_genres", [%{movie_id: 2, genre_id: 3}, %{movie_id: 2, genre_id: 4}])
Repo.insert_all("movies_genres", [%{movie_id: 3, genre_id: 1}, %{movie_id: 3, genre_id: 2}])
Repo.insert_all("movies_genres", [%{movie_id: 4, genre_id: 1}, %{movie_id: 4, genre_id: 2}, %{movie_id: 4, genre_id: 5}, %{movie_id: 4, genre_id: 6}])
Repo.insert_all("movies_genres", [%{movie_id: 5, genre_id: 1}, %{movie_id: 5, genre_id: 2}, %{movie_id: 5, genre_id: 5}, %{movie_id: 5, genre_id: 6}])
Repo.insert_all("movies_genres", [%{movie_id: 6, genre_id: 1}, %{movie_id: 6, genre_id: 2}, %{movie_id: 6, genre_id: 5}, %{movie_id: 6, genre_id: 6}])
Repo.insert_all("movies_genres", [%{movie_id: 7, genre_id: 2}, %{movie_id: 7, genre_id: 3}, %{movie_id: 7, genre_id: 7}])
Repo.insert_all("movies_genres", [%{movie_id: 8, genre_id: 3}, %{movie_id: 8, genre_id: 8}])
Repo.insert_all("movies_genres", [%{movie_id: 9, genre_id: 3}, %{movie_id: 9, genre_id: 6}, %{movie_id: 9, genre_id: 8}, %{movie_id: 9, genre_id: 9}])
Repo.insert_all("movies_genres", [%{movie_id: 10, genre_id: 1}, %{movie_id: 10, genre_id: 3}, %{movie_id: 10, genre_id: 7}, %{movie_id: 10, genre_id: 8}])
Repo.insert_all("movies_genres", [%{movie_id: 11, genre_id: 3}])
Repo.insert_all("movies_genres", [%{movie_id: 12, genre_id: 2}, %{movie_id: 12, genre_id: 5}, %{movie_id: 12, genre_id: 10}])
Repo.insert_all("movies_genres", [%{movie_id: 13, genre_id: 2}, %{movie_id: 13, genre_id: 11}])
Repo.insert_all("movies_genres", [%{movie_id: 14, genre_id: 3}, %{movie_id: 14, genre_id: 5}, %{movie_id: 14, genre_id: 6}])
Repo.insert_all("movies_genres", [%{movie_id: 15, genre_id: 3}, %{movie_id: 15, genre_id: 12}])
#Repo.insert_all("movies_genres", [%{movie_id: 16, genre_id: }])
#Repo.insert_all("movies_genres", [%{movie_id: 17, genre_id: }])
#Repo.insert_all("movies_genres", [%{movie_id: 18, genre_id: }])
#Repo.insert_all("movies_genres", [%{movie_id: 19, genre_id: }])
#Repo.insert_all("movies_genres", [%{movie_id: 20, genre_id: }])
#Repo.insert_all("movies_genres", [%{movie_id: 21, genre_id: }])
#Repo.insert_all("movies_genres", [%{movie_id: 22, genre_id: }])
#Repo.insert_all("movies_genres", [%{movie_id: 23, genre_id: }])
#Repo.insert_all("movies_genres", [%{movie_id: 24, genre_id: }])
#Repo.insert_all("movies_genres", [%{movie_id: 25, genre_id: }])
#Repo.insert_all("movies_genres", [%{movie_id: 26, genre_id: }])
#Repo.insert_all("movies_genres", [%{movie_id: 27, genre_id: }])
#Repo.insert_all("movies_genres", [%{movie_id: 28, genre_id: }])
#Repo.insert_all("movies_genres", [%{movie_id: 29, genre_id: }])
#Repo.insert_all("movies_genres", [%{movie_id: 30, genre_id: }])


##i##
Repo.insert_all("movies_languages", [%{movie_id: 1, language_id: 1}])
Repo.insert_all("movies_languages", [%{movie_id: 2, language_id: 1}, %{movie_id: 2, language_id: 5}, %{movie_id: 2, language_id: 6}])
Repo.insert_all("movies_languages", [%{movie_id: 3, language_id: 1}, %{movie_id: 3, language_id: 4}])
Repo.insert_all("movies_languages", [%{movie_id: 4, language_id: 1}])
Repo.insert_all("movies_languages", [%{movie_id: 5, language_id: 1}])
Repo.insert_all("movies_languages", [%{movie_id: 6, language_id: 1}])
Repo.insert_all("movies_languages", [%{movie_id: 7, language_id: 1}])
Repo.insert_all("movies_languages", [%{movie_id: 8, language_id: 1}, %{movie_id: 8, language_id: 6}, %{movie_id: 8, language_id: 7}])
Repo.insert_all("movies_languages", [%{movie_id: 9, language_id: 1}, %{movie_id: 9, language_id: 4}])
Repo.insert_all("movies_languages", [%{movie_id: 10, language_id: 1}, %{movie_id: 10, language_id: 8}])
Repo.insert_all("movies_languages", [%{movie_id: 11, language_id: 1}])
Repo.insert_all("movies_languages", [%{movie_id: 12, language_id: 1}])
Repo.insert_all("movies_languages", [%{movie_id: 13, language_id: 1}])
Repo.insert_all("movies_languages", [%{movie_id: 14, language_id: 1}, %{movie_id: 14, language_id: 9}])
Repo.insert_all("movies_languages", [%{movie_id: 15, language_id: 1}, %{movie_id: 15, language_id: 4}, %{movie_id: 15, language_id: 6}, %{movie_id: 15, language_id: 10}])
#Repo.insert_all("movies_languages", [%{movie_id: 16, language_id: }])
#Repo.insert_all("movies_languages", [%{movie_id: 17, language_id: }])
#Repo.insert_all("movies_languages", [%{movie_id: 18, language_id: }])
#Repo.insert_all("movies_languages", [%{movie_id: 19, language_id: }])
#Repo.insert_all("movies_languages", [%{movie_id: 20, language_id: }])
#Repo.insert_all("movies_languages", [%{movie_id: 21, language_id: }])
#Repo.insert_all("movies_languages", [%{movie_id: 22, language_id: }])
#Repo.insert_all("movies_languages", [%{movie_id: 23, language_id: }])
#Repo.insert_all("movies_languages", [%{movie_id: 24, language_id: }])
#Repo.insert_all("movies_languages", [%{movie_id: 25, language_id: }])
#Repo.insert_all("movies_languages", [%{movie_id: 26, language_id: }])
#Repo.insert_all("movies_languages", [%{movie_id: 27, language_id: }])
#Repo.insert_all("movies_languages", [%{movie_id: 28, language_id: }])
#Repo.insert_all("movies_languages", [%{movie_id: 29, language_id: }])
#Repo.insert_all("movies_languages", [%{movie_id: 30, language_id: }])


##i##
Repo.insert_all("movies_directors", [%{movie_id: 1, director_id: 1}, %{movie_id: 1, director_id: 2}])
Repo.insert_all("movies_directors", [%{movie_id: 2, director_id: 3}])
Repo.insert_all("movies_directors", [%{movie_id: 3, director_id: 1}, %{movie_id: 3, director_id: 2}])
Repo.insert_all("movies_directors", [%{movie_id: 4, director_id: 4}])
Repo.insert_all("movies_directors", [%{movie_id: 5, director_id: 5}])
Repo.insert_all("movies_directors", [%{movie_id: 6, director_id: 6}])
Repo.insert_all("movies_directors", [%{movie_id: 7, director_id: 7}])
Repo.insert_all("movies_directors", [%{movie_id: 8, director_id: 8}])
Repo.insert_all("movies_directors", [%{movie_id: 9, director_id: 9}])
Repo.insert_all("movies_directors", [%{movie_id: 10, director_id: 10}])
Repo.insert_all("movies_directors", [%{movie_id: 11, director_id: 11}])
Repo.insert_all("movies_directors", [%{movie_id: 12, director_id: 12}])
Repo.insert_all("movies_directors", [%{movie_id: 13, director_id: 13}])
Repo.insert_all("movies_directors", [%{movie_id: 14, director_id: 14}])
Repo.insert_all("movies_directors", [%{movie_id: 15, director_id: 15}])
#Repo.insert_all("movies_directors", [%{movie_id: 16, director_id: }])
#Repo.insert_all("movies_directors", [%{movie_id: 17, director_id: }])
#Repo.insert_all("movies_directors", [%{movie_id: 18, director_id: }])
#Repo.insert_all("movies_directors", [%{movie_id: 19, director_id: }])
#Repo.insert_all("movies_directors", [%{movie_id: 20, director_id: }])
#Repo.insert_all("movies_directors", [%{movie_id: 21, director_id: }])
#Repo.insert_all("movies_directors", [%{movie_id: 22, director_id: }])
#Repo.insert_all("movies_directors", [%{movie_id: 23, director_id: }])
#Repo.insert_all("movies_directors", [%{movie_id: 24, director_id: }])
#Repo.insert_all("movies_directors", [%{movie_id: 25, director_id: }])
#Repo.insert_all("movies_directors", [%{movie_id: 26, director_id: }])
#Repo.insert_all("movies_directors", [%{movie_id: 27, director_id: }])
#Repo.insert_all("movies_directors", [%{movie_id: 28, director_id: }])
#Repo.insert_all("movies_directors", [%{movie_id: 29, director_id: }])
#Repo.insert_all("movies_directors", [%{movie_id: 30, director_id: }])


##i##
Repo.insert_all("movies_writers", [%{movie_id: 1, writer_id: 1}, %{movie_id: 1, writer_id: 2}])
Repo.insert_all("movies_writers", [%{movie_id: 2, writer_id: 3}])
Repo.insert_all("movies_writers", [%{movie_id: 3, writer_id: 1}, %{movie_id: 3, writer_id: 2}])
Repo.insert_all("movies_writers", [%{movie_id: 4, writer_id: 4}])
Repo.insert_all("movies_writers", [%{movie_id: 5, writer_id: 4}, %{movie_id: 5, writer_id: 5}, %{movie_id: 5, writer_id: 6}])
Repo.insert_all("movies_writers", [%{movie_id: 6, writer_id: 4}, %{movie_id: 6, writer_id: 6}])
Repo.insert_all("movies_writers", [%{movie_id: 7, writer_id: 7}, %{movie_id: 7, writer_id: 8}, %{movie_id: 7, writer_id: 9}])
Repo.insert_all("movies_writers", [%{movie_id: 8, writer_id: 10}, %{movie_id: 8, writer_id: 11}])
Repo.insert_all("movies_writers", [%{movie_id: 9, writer_id: 12}, %{movie_id: 9, writer_id: 13}])
Repo.insert_all("movies_writers", [%{movie_id: 10, writer_id: 14}, %{movie_id: 10, writer_id: 15}, %{movie_id: 10, writer_id: 16}, %{movie_id: 10, writer_id: 17}])
Repo.insert_all("movies_writers", [%{movie_id: 11, writer_id: 18}, %{movie_id: 11, writer_id: 19}])
Repo.insert_all("movies_writers", [%{movie_id: 12, writer_id: 20}, %{movie_id: 12, writer_id: 21}])
Repo.insert_all("movies_writers", [%{movie_id: 13, writer_id: 22}])
Repo.insert_all("movies_writers", [%{movie_id: 14, writer_id: 23}, %{movie_id: 14, writer_id: 24}, %{movie_id: 14, writer_id: 25}, %{movie_id: 14, writer_id: 26}])
Repo.insert_all("movies_writers", [%{movie_id: 15, writer_id: 27}])
#Repo.insert_all("movies_writers", [%{movie_id: 16, writer_id: }])
#Repo.insert_all("movies_writers", [%{movie_id: 17, writer_id: }])
#Repo.insert_all("movies_writers", [%{movie_id: 18, writer_id: }])
#Repo.insert_all("movies_writers", [%{movie_id: 19, writer_id: }])
#Repo.insert_all("movies_writers", [%{movie_id: 20, writer_id: }])
#Repo.insert_all("movies_writers", [%{movie_id: 21, writer_id: }])
#Repo.insert_all("movies_writers", [%{movie_id: 22, writer_id: }])
#Repo.insert_all("movies_writers", [%{movie_id: 23, writer_id: }])
#Repo.insert_all("movies_writers", [%{movie_id: 24, writer_id: }])
#Repo.insert_all("movies_writers", [%{movie_id: 25, writer_id: }])
#Repo.insert_all("movies_writers", [%{movie_id: 26, writer_id: }])
#Repo.insert_all("movies_writers", [%{movie_id: 27, writer_id: }])
#Repo.insert_all("movies_writers", [%{movie_id: 28, writer_id: }])
#Repo.insert_all("movies_writers", [%{movie_id: 29, writer_id: }])
#Repo.insert_all("movies_writers", [%{movie_id: 30, writer_id: }])


##i##
Repo.insert_all("movies_companies", [%{movie_id: 1, company_id: 1}, %{movie_id: 1, company_id: 2}, %{movie_id: 1, company_id: 3}])
Repo.insert_all("movies_companies", [%{movie_id: 2, company_id: 4}, %{movie_id: 2, company_id: 5}, %{movie_id: 2, company_id: 6}])
Repo.insert_all("movies_companies", [%{movie_id: 3, company_id: 1}, %{movie_id: 3, company_id: 2}, %{movie_id: 3, company_id: 3}])
Repo.insert_all("movies_companies", [%{movie_id: 4, company_id: 7}])
Repo.insert_all("movies_companies", [%{movie_id: 5, company_id: 7}])
Repo.insert_all("movies_companies", [%{movie_id: 6, company_id: 7}])
Repo.insert_all("movies_companies", [%{movie_id: 7, company_id: 1}, %{movie_id: 7, company_id: 2}])
Repo.insert_all("movies_companies", [%{movie_id: 8, company_id: 8}])
Repo.insert_all("movies_companies", [%{movie_id: 9, company_id: 1}, %{movie_id: 9, company_id: 9}])
Repo.insert_all("movies_companies", [%{movie_id: 10, company_id: 1}, %{movie_id: 10, company_id: 10}, %{movie_id: 10, company_id: 11}, %{movie_id: 10, company_id: 12}])
Repo.insert_all("movies_companies", [%{movie_id: 11, company_id: 13}, %{movie_id: 11, company_id: 14}])
Repo.insert_all("movies_companies", [%{movie_id: 12, company_id: 15}, %{movie_id: 12, company_id: 16}])
Repo.insert_all("movies_companies", [%{movie_id: 13, company_id: 15}, %{movie_id: 13, company_id: 16}])
Repo.insert_all("movies_companies", [%{movie_id: 14, company_id: 17}, %{movie_id: 14, company_id: 18}])
Repo.insert_all("movies_companies", [%{movie_id: 15, company_id: 19}, %{movie_id: 15, company_id: 20}])
#Repo.insert_all("movies_companies", [%{movie_id: 16, company_id: }])
#Repo.insert_all("movies_companies", [%{movie_id: 17, company_id: }])
#Repo.insert_all("movies_companies", [%{movie_id: 18, company_id: }])
#Repo.insert_all("movies_companies", [%{movie_id: 19, company_id: }])
#Repo.insert_all("movies_companies", [%{movie_id: 20, company_id: }])
#Repo.insert_all("movies_companies", [%{movie_id: 21, company_id: }])
#Repo.insert_all("movies_companies", [%{movie_id: 22, company_id: }])
#Repo.insert_all("movies_companies", [%{movie_id: 23, company_id: }])
#Repo.insert_all("movies_companies", [%{movie_id: 24, company_id: }])
#Repo.insert_all("movies_companies", [%{movie_id: 25, company_id: }])
#Repo.insert_all("movies_companies", [%{movie_id: 26, company_id: }])
#Repo.insert_all("movies_companies", [%{movie_id: 27, company_id: }])
#Repo.insert_all("movies_companies", [%{movie_id: 28, company_id: }])
#Repo.insert_all("movies_companies", [%{movie_id: 29, company_id: }])
#Repo.insert_all("movies_companies", [%{movie_id: 30, company_id: }])


