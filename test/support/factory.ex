defmodule AnimalSpotterApi.Factory do
  use ExMachina.Ecto, repo: AnimalSpotterApi.Repo

  def animal_factory do
    %AnimalSpotterApi.Animal{
      name: "Ground hog",
      points: 12
    }
  end

  def user_factory do
    %AnimalSpotterApi.User{
      name: "Rachel",
      points: 123
    }
  end

  def spot_factory do
    %AnimalSpotterApi.Spot{
      user: user_factory,
      animal: animal_factory
    }
  end

end
