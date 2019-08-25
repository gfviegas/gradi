defmodule GradiGraphql.Schema.Author do
  use Absinthe.Schema.Notation

  object :author do
    field :name, non_null(:string)
  end
end
