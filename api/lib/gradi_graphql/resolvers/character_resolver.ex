defmodule GradiGraphql.CharacterResolver do
  alias Gradi.Movies.Character

  def resolve_name(%Character{character: name}, _args, _info) do
    {:ok, name}
  end
end
