# Script for populating the Mongo database. You can run it as:
#
#     mix run priv/repo/seeds_mongo.exs

# Mongo.find(:mongo, "collection", %%{}, limit: 20)

Mongo.delete_many!(:mongo, "series", %{})
Mongo.insert_many!(:mongo, "series", [
  %{
  	imdb_id: "tt0460681",
  	title: "Supernatural",
  	release_date: "2005-09-13",
  	runtime: "44 min",
  	classification: "PG",
  	genres: ["Drama", "Fantasy", "Horror", "Mystery", "Thriller"],
  	writers: ["Eric Kripke"],
  	actors: [
      %{name: "Jared Padalecki", character: "Sam Winchester", protagonist: true},
      %{name: "Jensen Ackles", character: "Dean Winchester", protagonist: true},
      %{name: "Misha Collins", character: "Castiel"},
      %{name: "Mark Sheppard", character: "Crowley"},
      %{name: "Jim Beaver", character: "Bobby Singer"},
      %{name: "Samantha Smith", character: "Mary Winchester"},
      %{name: "Mark Pellegrino", character: "Lucifer"},
      %{name: "Ruth Connell", character: "Rowena MacLeod"},
      %{name: "Alexander Calvert", character: "Jack"}
  	],
  	description: "Two brothers follow their father's footsteps as hunters, fighting evil supernatural beings of many kinds, including monsters, demons, and gods that roam the earth.",
  	languages: ["English"],
  	countries: ["USA"],
  	poster: "https://m.media-amazon.com/images/M/MV5BMjZmYWYwNWMtNGVjNy00NjA4LTgwODQtMThjODNlNjA4ZDdlXkEyXkFqcGdeQXVyNjg3MDMxNzU@._V1_SX300.jpg",
  	seasons: 15
  },
  %{
  	imdb_id: "tt0903747",
  	title: "Breaking Bad",
  	release_date: "2008-01-20",
  	runtime: "49 min",
  	classification: "14A",
  	genres: ["Crime", "Drama", "Thriller"],
  	writers: ["Vince Gilligan"],
  	actors: [
      %{name: "Bryan Cranston", character: "Walter White"},
      %{name: "Anna Gunn", character: "Skyler White"},
      %{name: "Aaron Paul", character: "Jesse Pinkman"},
      %{name: "Dean Norris", character: "Hank Schrader"},
      %{name: "Betsy Brandt", character: "Marie Schrader"},
      %{name: "RJ Mitte", character: "Walter White, Jr."},
      %{name: "Bob Odenkirk", character: "Saul Goodman"}
  	],
  	description: "A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family's future.",
  	languages: ["English", "Spanish"],
  	countries: ["USA"],
  	poster: "https://m.media-amazon.com/images/M/MV5BMjhiMzgxZTctNDc1Ni00OTIxLTlhMTYtZTA3ZWFkODRkNmE2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg",
  	seasons: 5,
  	spinoffs: [
      %{imdb_id: "tt3032476", title: "Better Call Saul"}
    ]
  },
  %{
  	imdb_id: "tt3032476",
  	title: "Better Call Saul",
  	release_date: "2015-02-08",
  	runtime: "46 min",
  	classification: "PG",
  	genres: ["Crime", "Drama"],
  	writers: ["Vince Gilligan", "Peter Gould"],
  	actors: [
  		%{name: "Bob Odenkirk", character: "Jummy McGill"},
  		%{name: "Jonathan Banks", character: "Mike Ehrmantraut"},
  		%{name: "Rhea Seehorn", character: "Kim Wexler"},
  		%{name: "Patrick Fabian", character: "Howard Hamlin"},
  		%{name: "Michael Mando", character: "Nacho Varga"},
  		%{name: "Michael McKean", character: "Chuck McGill"},
  		%{name: "Giancarlo Esposito", character: "Gustavo 'Gus' Fring"}
  	],
  	description: "The trials and tribulations of criminal lawyer, Jimmy McGill, in the time leading up to establishing his strip-mall law office in Albuquerque, New Mexico.",
  	languages: ["English", "Spanish", "Vietnamese"],
  	countries: ["USA"],
  	poster: "https://m.media-amazon.com/images/M/MV5BMTAxOTQ0MjUzMzJeQTJeQWpwZ15BbWU4MDY0NTAxNzMx._V1_SX300.jpg",
  	seasons: 5
  },
  %{
  	imdb_id: "tt7366338",
  	title: "Chernobyl",
  	release_date: "2019-05-06",
  	runtime: "330 min",
  	classification: "13+",
  	genres: ["Drama", "History", "Thriller"],
  	writers: ["Craig Mazin"],
  	actors: [
      %{name: "Jessie Buckley", character: "Lyudmilla Ignatenko"},
      %{name: "Jared Harris", character: "Valery Legasov"},
      %{name: "Stellan Skarsgård", character: "Boris Shcherbina"},
      %{name: "Adam Nagaitis", character: "Vasily Ignatenko"},
      %{name: "Emily Watson", character: "Ulana Khomyuk"},
      %{name: "Paul Ritter", character: "Anatoly Dyatlov"},
      %{name: "Robert Emms", character: "Leonid Toptunov"},
      %{name: "Sam Throughton", character: "Alexandr Akimov"}
  	],
  	description: "In April 1986, an explosion at the Chernobyl nuclear power plant in the Union of Soviet Socialist Republics becomes one of the world's worst man-made catastrophes.",
  	languages: ["English"],
  	countries: ["USA", "UK"],
  	poster: "https://m.media-amazon.com/images/M/MV5BNTEyYmIzMDUtNWMwNC00Y2Q1LWIyZTgtMGY1YzUxOTAwYTAwXkEyXkFqcGdeQXVyMjIyMTc0ODQ@._V1_SX300.jpg",
  	seasons: 1
  },
  %{
  	imdb_id: "tt0111999",
  	title: "Hercules: The Legendary Journeys",
  	release_date: "1995-01-16",
  	runtime: "44 min",
  	classification: "10",
  	genres: [
      %{name: "Action"},
  		%{name: "Adventure"},
  		%{name: "Drama"},
  		%{name: "Fantasy"},
  		%{name: "Romance"}
  	],
  	writers: ["Christian Williams"],
  	actors: [
  		%{name: "Kevin Sorbo", character: "Hercules"},
  		%{name: "Michael Hurst", character: "Iolaus"},
  		%{name: "Kevin Smith", character: "Ares"},
  		%{name: "Robert Trebor", character: "Salmoneus"},
  		%{name: "Jeffrey Thomas", character: "Jason"},
  		%{name: "Paul Norell", character: "Falafel"},
  		%{name: "Bruce Campbell", character: "Autolycus"},
  		%{name: "Alexandra Tyding", character: "Aphrodite"},
  		%{name: "Lucy Lawless", character: "Xena"}
  	],
  	description: "Hercules, aided by his best friend Iolaus, goes on many adventures helping people and slaying mythical monsters using his half-god strength.",
  	languages: ["English"],
  	countries: ["USA", "New Zealand"],
  	poster: "https://m.media-amazon.com/images/M/MV5BYTUxZTM5ZWUtNzc3My00ZTAxLWFkZjEtM2FlODQ3MzI3OWRlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg",
  	seasons: 6,
  	spinoffs: [
      %{imdb_id: "tt0112230", title: "Xena: Warrior Princess"},
      %{imdb_id: "tt0169516", title: "Young Hercules"}
    ]
  },
  %{
  	imdb_id: "tt0112230",
  	title: "Xena: Warrior Princess",
  	release_date: "1995-09-04",
  	runtime: "45 min",
  	classification: "PG",
  	genres: ["Action", "Adventure", "Drama", "Fantasy"],
  	writers: [ "Sam Raimi", "John Schulian", "R.J. Stewart", "Rob Tapert"],
  	actors: [
  		%{name: "Lucy Lawless", character: "Xena"},
  		%{name: "Renée O'Connor", character: "Gabrielle"},
  		%{name: "Ted Raimi", character: "Joxer"},
  		%{name: "Kevin Smith", character: "Ares"},
  		%{name: "Hudson Leick", character: "Callisto"},
  		%{name: "Karl Urban", character: "Julius Caesar"},
  		%{name: "Alexandra Tyding", character: "Aphrodite"},
  		%{name: "Adriene Wilkinson", character: "Eve"},
  		%{name: "Marton Csokas", character: "Borias"}
  	],
  	description: "Xena, a mighty Warrior Princess with a dark past, sets out to redeem herself. She is joined by small town bard, Gabrielle. Together they journey the ancient world and fight for the greater good against ruthless Warlords and Gods.",
  	languages: ["English"],
  	countries: ["USA", "New Zealand"],
  	poster: "https://m.media-amazon.com/images/M/MV5BOTdkYjA4YzAtMjNiZS00OTgyLTg5Y2ItNGIwZGQyMTUzNzFiXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg",
  	seasons: 6
  },
  %{
  	imdb_id: "tt0169516",
  	title: "Young Hercules",
  	release_date: "1998-09-12",
  	runtime: "30 min",
  	classification: "G",
  	genres: [ "Action", "Adventure", "Fantasy"],
  	writers: [ "Andrew Dettmann", "Rob Tapert", "Daniel Truly"],
  	actors: [
      %{name: "Ryan Gosling", character: "Hercules"},
      %{name: "Dean O'Gorman", character: "Iolaus"},
      %{name: "Chris Conrad", character: "Jason"},
      %{name: "Jodie Rimmer", character: "Lilith"},
      %{name: "Nathaniel Lees", character: "Cheiron"},
      %{name: "Angela Marie Dotchin", character: "Kora"},
  		%{name: "Kevin Smith", character: "Ares"},
      %{name: "Joel Tobeck", character: "Strife"},
      %{name: "Meighan Desmond", character: "Discord"},
      %{name: "Jason Hoyte", character: "Hephaestus"}
  	],
  	description: "The adventures of Hercules as a boy, during his time at a training academy for warriors.",
  	languages: ["English"],
  	countries: ["USA", "New Zealand"],
  	poster: "https://m.media-amazon.com/images/M/MV5BN2UyZGYyMTctMzA0Ny00NmE3LTg4N2QtMmM1MWNlYTdiMjQxL2ltYWdlXkEyXkFqcGdeQXVyNDUxNjc5NjY@._V1_SX300.jpg",
  	seasons: 1
  }
])
