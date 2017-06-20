defmodule AnimalSpotterApi.Router do
  use AnimalSpotterApi.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AnimalSpotterApi do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api", AnimalSpotterApi do
    pipe_through :api

    resources "/animals", AnimalController, only: [:index]
    resources "/users", UserController, only: [:index]
  end
end
