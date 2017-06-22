defmodule AnimalSpotterApi.SpotView do
  use AnimalSpotterApi.Web, :view

  def render("index.json", %{spots: spots}) do
    %{
      spots: Enum.map(spots, &spot_json/1)
    }
  end

  def render("show.json", %{spot: spot}) do
    %{spot: spot_json(spot)}
  end

  def spot_json(spot) do
    %{
        animal_id: spot.animal_id,
        user_id: spot.user_id
    }
  end
end
