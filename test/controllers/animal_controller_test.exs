defmodule AnimalSpotterApi.AnimalControllerTest do
  use AnimalSpotterApi.ConnCase

  test "#index renders a list of animals" do
    conn = build_conn()
    animal = insert(:animal)

    conn = get conn, animal_path(conn, :index)

    assert json_response(conn, 200) == render_json("index.json", animals: [animal])
  end
  
  test "#index renders a single animal" do
    conn = build_conn()
    animal = insert(:animal)

    conn = get conn, animal_path(conn, :show, animal)

    assert json_response(conn, 200) == render_json("show.json", animal: animal)
  end
  
  defp render_json(template, assigns) do
    assigns = Map.new(assigns)

    AnimalSpotterApi.AnimalView.render(template, assigns)
    |> Poison.encode!
    |> Poison.decode!
  end
end
