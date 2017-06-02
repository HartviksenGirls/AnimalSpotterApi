defmodule AnimalSpotterApi.AnimalControllerTest do
  use AnimalSpotterApi.ConnCase

  test "#index renders a list of animals" do
    conn = build_conn()
    animal = insert(:animal)

    conn = get conn, animal_path(conn, :index)

    assert json_response(conn, 200) == %{
      "animals" => [%{
        "name" => animal.name,
        "points" => animal.points
      }]
    }
  end
end
