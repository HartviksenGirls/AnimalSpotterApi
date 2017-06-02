defmodule AnimalSpotterApi.Factory do
  use ExMachina.Ecto, repo: AnimalSpotterApi.Repo

  def animal_factory do
    %AnimalSpotterApi.Animal{
      name: "Ground hog",
      points: 12
    }
  end
end
