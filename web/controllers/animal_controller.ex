defmodule AnimalSpotterApi.AnimalController do
  use AnimalSpotterApi.Web, :controller

  alias AnimalSpotterApi.Animal

  def index(conn, _params) do
    animals = Repo.all(Animal)
    render conn, "index.json", animals: animals
  end
end
