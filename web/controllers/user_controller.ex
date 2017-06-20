defmodule AnimalSpotterApi.UserController do
  use AnimalSpotterApi.Web, :controller

  alias AnimalSpotterApi.User

  def index(conn, _params) do
    users = Repo.all(User)
    render conn, "index.json", users: users
  end
end
