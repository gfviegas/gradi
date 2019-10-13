defmodule Gradi.MoviesTest do
  use Gradi.DataCase

  alias Gradi.Movies

  describe "movies" do
    alias Gradi.Movies.Movie

    @valid_attrs %{
      imdb_id: "someimdbid",
      title: "some title",
      classification: 1,
      description: "some description",
      release_date: ~D[2000-01-01],
      revenue: 123456.93,
      poster: "some poster",
    }
    @update_attrs %{
      imdb_id: "other_id",
      title: "some updated title",
      classification: 2,
      description: "some updated description",
      release_date: ~D[2000-12-12],
      revenue: 9876543.21,
      poster: "some updated poster",
    }
    @invalid_attrs %{
      imdb_id: nil,
      title: nil,
      classification: nil,
      description: nil,
      release_date: nil,
      revenue: nil,
      poster: nil
    }

    def movie_fixture(attrs \\ %{}) do
      {:ok, movie} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Movies.create_movie()

      movie
    end

    test "list_movies/0 returns all movies and the count of movies" do
      movie = movie_fixture()
      assert Movies.list_movies() == {[movie], 1}
    end

    test "get_movie!/1 returns the movie with given id" do
      movie = movie_fixture()
      assert Movies.get_movie!(movie.id) == movie
    end

    test "create_movie/1 with valid data creates a movie" do
      assert {:ok, %Movie{} = movie} = Movies.create_movie(@valid_attrs)
      assert movie.description == "some description"
      assert movie.title == "some title"
    end

    test "create_movie/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Movies.create_movie(@invalid_attrs)
    end

    test "update_movie/2 with valid data updates the movie" do
      movie = movie_fixture()
      assert {:ok, %Movie{} = movie} = Movies.update_movie(movie, @update_attrs)
      assert movie.description == "some updated description"
      assert movie.title == "some updated title"
    end

    test "update_movie/2 with invalid data returns error changeset" do
      movie = movie_fixture()
      assert {:error, %Ecto.Changeset{}} = Movies.update_movie(movie, @invalid_attrs)
      assert movie == Movies.get_movie!(movie.id)
    end

    test "delete_movie/1 deletes the movie" do
      movie = movie_fixture()
      assert {:ok, %Movie{}} = Movies.delete_movie(movie)
      assert_raise Ecto.NoResultsError, fn -> Movies.get_movie!(movie.id) end
    end

    test "change_movie/1 returns a movie changeset" do
      movie = movie_fixture()
      assert %Ecto.Changeset{} = Movies.change_movie(movie)
    end
  end

  describe "movies_characters" do
    alias Gradi.Movies.Character

    @valid_attrs %{character: "Gasparzinho", protagonist: true}
    @update_attrs %{character: "Justin Finch-Fletchley", protagonist: false}
    @invalid_attrs %{character: nil}

    def character_fixture(attrs \\ %{}) do
      {:ok, character} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Movies.create_character()

      character
    end

    test "list_movies_characters/0 returns all movies_characters" do
      character = character_fixture()
      assert Movies.list_movies_characters() == [character]
    end

    test "get_character!/1 returns the character with given id" do
      character = character_fixture()
      assert Movies.get_character!(character.id) == character
    end

    test "create_character/1 with valid data creates a character" do
      assert {:ok, %Character{} = character} = Movies.create_character(@valid_attrs)
    end

    test "create_character/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Movies.create_character(@invalid_attrs)
    end

    test "update_character/2 with valid data updates the character" do
      character = character_fixture()
      assert {:ok, %Character{} = character} = Movies.update_character(character, @update_attrs)
    end

    test "update_character/2 with invalid data returns error changeset" do
      character = character_fixture()
      assert {:error, %Ecto.Changeset{}} = Movies.update_character(character, @invalid_attrs)
      assert character == Movies.get_character!(character.id)
    end

    test "delete_character/1 deletes the character" do
      character = character_fixture()
      assert {:ok, %Character{}} = Movies.delete_character(character)
      assert_raise Ecto.NoResultsError, fn -> Movies.get_character!(character.id) end
    end

    test "change_character/1 returns a character changeset" do
      character = character_fixture()
      assert %Ecto.Changeset{} = Movies.change_character(character)
    end
  end
end
