defmodule GradiWeb.Schema do
  use Absinthe.Schema

  alias GradiWeb.NewsResolver

  object :link do
    field :id, non_null(:id)
    field :url, non_null(:string)
    field :description, non_null(:string)
  end

  query do
    field :all_links, :link |> non_null |> list_of |> non_null do
      resolve(&NewsResolver.all_links/3)
    end

    field :one_link, :link |> non_null do
      resolve(&NewsResolver.one_link/3)
    end
  end
end
