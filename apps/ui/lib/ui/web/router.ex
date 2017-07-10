defmodule Ui.Web.Router do
  use Ui.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Ui.Web do
    pipe_through :browser # Use the default browser stack
    get "/", PageController, :index
  end

  scope "/api" do
    pipe_through :api
    forward "/", Absinthe.Plug, schema: Ui.GQL.Schema
  end

  # Other scopes may use custom stacks.
  # scope "/api", Ui.Web do
  #   pipe_through :api
  # end
end
