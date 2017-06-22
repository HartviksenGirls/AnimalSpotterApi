defmodule AnimalSpotterApi.SpotControllerTest do
  use AnimalSpotterApi.ConnCase

  test "#index renders a single spot" do
    conn = build_conn()
    spot = insert(:spot, user: insert(:user), animal: insert(:animal))

    conn = get conn, spot_path(conn, :show, spot)

    assert json_response(conn, 200) == render_json("show.json", spot: spot)
  end
  
  defp render_json(template, assigns) do
    assigns = Map.new(assigns)

    AnimalSpotterApi.SpotView.render(template, assigns)
    |> Poison.encode!
    |> Poison.decode!
  end
end
