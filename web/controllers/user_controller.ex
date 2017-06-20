defmodule AnimalSpotterApi.UserController do
  use AnimalSpotterApi.Web, :controller

  alias AnimalSpotterApi.User

  def index(conn, _params) do
    users = Repo.all(User)
    render conn, "index.json", users: users
  end

  def show(conn, %{"id" => id}) do
  	user = Repo.get!(User, id)
  	render(conn, "show.json", user: user)
  end
end
