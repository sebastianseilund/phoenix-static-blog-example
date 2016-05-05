defmodule StaticBlog.PageController do
  use StaticBlog.Web, :controller

  def index(conn, _params) do
    {:ok, posts} = StaticBlog.Repo.list()
    render conn, "index.html", posts: posts
  end
end
