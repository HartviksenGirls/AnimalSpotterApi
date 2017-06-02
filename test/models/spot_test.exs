defmodule AnimalSpotterApi.SpotTest do
  use AnimalSpotterApi.ModelCase

  alias AnimalSpotterApi.Spot

  @valid_attrs %{}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Spot.changeset(%Spot{}, @valid_attrs)
    assert changeset.valid?
  end

  #test "changeset with invalid attributes" do
  #  changeset = Spot.changeset(%Spot{}, @invalid_attrs)
  #  refute changeset.valid?
  #end
end
