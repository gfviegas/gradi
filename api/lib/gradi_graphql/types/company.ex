defmodule GradiGraphql.Schema.Company do
  use Absinthe.Schema.Notation

  object :company do
    field :id, :id
    field :name, non_null(:string)
    field :country, :string
    field :logo, :string
  end
end
