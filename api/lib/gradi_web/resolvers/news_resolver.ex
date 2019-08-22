defmodule GradiWeb.NewsResolver do
  alias Gradi.News

  def all_links(_root, _args, _info) do
    links = News.list_links()
    {:ok, links}
  end

  def one_link(_r, _a, _i) do
    {:ok, %{id: 23890, url: "http://google.com", description: "Teste"}}
  end
end
