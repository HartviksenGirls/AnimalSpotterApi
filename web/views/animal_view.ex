defmodule AnimalSpotterApi.AnimalView do
  use AnimalSpotterApi.Web, :view

  def render("index.json", %{animals: animals}) do
    %{
      animals: Enum.map(animals, &animal_json/1)
    }
  end

  def animal_json(animal) do
    %{
      name: animal.name,
      points: animal.points
    }
  end
end
