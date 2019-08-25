defmodule Gradi.WritersTest do
  use Gradi.DataCase

  alias Gradi.Writers

  describe "writers" do
    alias Gradi.Writers.Writer

    @valid_attrs %{name: "some name"}
    @update_attrs %{name: "some updated name"}
    @invalid_attrs %{name: nil}

    def writer_fixture(attrs \\ %{}) do
      {:ok, writer} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Writers.create_writer()

      writer
    end

    test "list_writers/0 returns all writers" do
      writer = writer_fixture()
      assert Writers.list_writers() == [writer]
    end

    test "get_writer!/1 returns the writer with given id" do
      writer = writer_fixture()
      assert Writers.get_writer!(writer.id) == writer
    end

    test "create_writer/1 with valid data creates a writer" do
      assert {:ok, %Writer{} = writer} = Writers.create_writer(@valid_attrs)
      assert writer.name == "some name"
    end

    test "create_writer/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Writers.create_writer(@invalid_attrs)
    end

    test "update_writer/2 with valid data updates the writer" do
      writer = writer_fixture()
      assert {:ok, %Writer{} = writer} = Writers.update_writer(writer, @update_attrs)
      assert writer.name == "some updated name"
    end

    test "update_writer/2 with invalid data returns error changeset" do
      writer = writer_fixture()
      assert {:error, %Ecto.Changeset{}} = Writers.update_writer(writer, @invalid_attrs)
      assert writer == Writers.get_writer!(writer.id)
    end

    test "delete_writer/1 deletes the writer" do
      writer = writer_fixture()
      assert {:ok, %Writer{}} = Writers.delete_writer(writer)
      assert_raise Ecto.NoResultsError, fn -> Writers.get_writer!(writer.id) end
    end

    test "change_writer/1 returns a writer changeset" do
      writer = writer_fixture()
      assert %Ecto.Changeset{} = Writers.change_writer(writer)
    end
  end
end
