defmodule AnimalSpotterApi.SpotViewTest do
	use AnimalSpotterApi.ModelCase
	import AnimalSpotterApi.Factory
	alias AnimalSpotterApi.SpotView

	test "spot_json" do
		spot = insert(:spot)

		rendered_spot = SpotView.spot_json(spot)

		assert rendered_spot == %{
      animal_id: spot.animal_id,
      user_id: spot.user_id
		}
		
	end

	test "index.json" do
		spot = insert(:spot)

		rendered_spots = SpotView.render("index.json", %{spots: [spot]})

		assert rendered_spots == %{
			spots: [SpotView.spot_json(spot)]
		}
	end

	test "show.json" do
		user = insert(:user)
		animal = insert(:animal)
		spot = insert(:spot, user: user, animal: animal)

		rendered_spot = SpotView.render("show.json", %{spot: spot})

		assert rendered_spot == %{
			spot: %{
	      animal_id: spot.animal_id,
	      user_id: spot.user_id
			}
		}
	end

end