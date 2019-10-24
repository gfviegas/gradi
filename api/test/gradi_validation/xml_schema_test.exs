defmodule GradiValidation.XMLSchemaTest do
  alias GradiValidation.XMLSchema
  use ExUnit.Case

  setup_all do
    available_files = %{
      movies: %{
        valid: "test/resources/movies.xml",
        invalid: "test/resources/movies_invalid.xml",
        missing: "test/resources/movies_missing_tags.xml"
      }
    }

    {:ok, available_files}
  end

  describe "movies" do
    test "valid file is accepted and default values are filled", files do
      assert {:ok, new_resource} = XMLSchema.validate(files[:movies][:valid], :movie)
      assert elem(new_resource, 0) == :xmlElement

      refute [] == :xmerl_xpath.string('/movies/movie/characters/character[@actor="Anthony Daniels"]/@protagonist', new_resource)
      assert {:xmlObj, _, 'false'} = :xmerl_xpath.string('string(/movies/movie/characters/character[@actor="Anthony Daniels"]/@protagonist)', new_resource)
    end

    test "valid file is not accepted with series type", files do
      assert {:error, _} = XMLSchema.validate(files[:movies][:valid], :series)
    end

    test "invalid file is not accepted", files do
      assert {:error, _} = XMLSchema.validate(files[:movies][:invalid], :movie)
    end

    test "missing tags are identified", files do
      assert {:error, err} = XMLSchema.validate(files[:movies][:missing], :movie)
      assert [{_, :xmerl_xsd, {:missing_mandatory_elements_in_all, _}}] = err
    end
  end
end
