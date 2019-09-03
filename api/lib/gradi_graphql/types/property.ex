defmodule GradiGraphql.Schema.Property do
  use Absinthe.Schema.Notation

  object :property do
    field :id, :id
    field :name, non_null(:string)
  end
end
