defmodule AnimalSpotterApi.PageController do
  use AnimalSpotterApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
