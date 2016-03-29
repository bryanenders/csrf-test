defmodule CsrfTest.Router do
  use CsrfTest.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", CsrfTest do
    pipe_through :browser

    resources "/", PageController, only: [:index, :create]
  end
end
