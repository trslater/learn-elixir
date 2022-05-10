defmodule PhxProtoWeb.PageController do
  use PhxProtoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
