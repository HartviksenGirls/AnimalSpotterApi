defmodule AnimalSpotterApi.AnimalController do
  use AnimalSpotterApi.Web, :controller

  alias AnimalSpotterApi.Animal

  def index(conn, _params) do
    animals = Repo.all(Animal)
    render conn, "index.json", animals: animals
  end

  def show(conn, %{"id" => id}) do
  	animal = Repo.get!(Animal, id)
  	render(conn, "show.json", animal: animal)
  end
end
