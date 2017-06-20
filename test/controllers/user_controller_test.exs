defmodule AnimalSpotterApi.UserControllerTest do
  use AnimalSpotterApi.ConnCase

  test "#index renders a list of users" do
    conn = build_conn()
    user = insert(:user)

    conn = get conn, user_path(conn, :index)

    assert json_response(conn, 200) == %{
      "users" => [%{
        "name" => user.name,
        "points" => user.points
      }]
    }
  end
end
