defmodule AnimalSpotterApi.SpotController do
  use AnimalSpotterApi.Web, :controller

  alias AnimalSpotterApi.Spot

  def index(conn, _params) do
    spots = Repo.all(Spot)
    render conn, "index.json", spots: spots
  end

  def show(conn, %{"id" => id}) do
  	spot = Repo.get!(Spot, id)
  	render(conn, "show.json", spot: spot)
  end
end
