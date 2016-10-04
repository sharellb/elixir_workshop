defmodule MissingProducts.PageController do
  use MissingProducts.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
