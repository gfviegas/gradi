defmodule GradiGraphql.Schema.Actor do
  use Absinthe.Schema.Notation

  object :actor do
    field :id, :id
    field :name, non_null(:string)
    field :date_created, non_null(:datetime)
    field :date_modified, non_null(:datetime)
  end
end
