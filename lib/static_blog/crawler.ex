defmodule StaticBlog.Crawler do
  def crawl do
    File.ls!("priv/posts")
    |> Enum.map(&StaticBlog.Post.compile/1)
    |> Enum.sort(&sort/2)
  end

  def sort(a, b) do
    Calendar.Date.diff(a.date, b.date) > 0
  end
end
