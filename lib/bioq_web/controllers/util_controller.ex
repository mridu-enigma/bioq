defmodule BioqWeb.UtilController do
  use BioqWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def rgen(conn, _params) do
    text(conn, "whatever")
  end
end
