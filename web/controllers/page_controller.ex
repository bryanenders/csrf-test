defmodule CsrfTest.PageController do
  use CsrfTest.Web, :controller

  def create(conn, _params) do
    conn
    |> put_flash(:info, "Success")
    |> redirect(to: page_path(conn, :index))
  end

  def index(conn, _params) do
    render conn, "index.html"
  end
end
