defmodule AnimalSpotterApi.AnimalViewTest do
	use AnimalSpotterApi.ModelCase
	import AnimalSpotterApi.Factory
	alias AnimalSpotterApi.AnimalView

	test "animal_json" do
		animal = insert(:animal)

		rendered_animal = AnimalView.animal_json(animal)

		assert rendered_animal == %{
			name: animal.name,
			points: animal.points
		}
	end

	test "index.json" do
		animal = insert(:animal)

		rendered_animals = AnimalView.render("index.json", %{animals: [animal]})

		assert rendered_animals == %{
			animals: [AnimalView.animal_json(animal)]
		}
	end

	test "show.json" do
		animal = insert(:animal)

		rendered_animal = AnimalView.render("show.json", %{animal: animal})

		assert rendered_animal == %{
			animal: AnimalView.animal_json(animal)
		}
	end

end