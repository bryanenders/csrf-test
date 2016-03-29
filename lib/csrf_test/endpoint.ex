defmodule CsrfTest.Endpoint do
  use Phoenix.Endpoint, otp_app: :csrf_test

  plug Plug.RequestId
  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:urlencoded]

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_csrf_test_key",
    signing_salt: "CTWcQQf6"

  plug CsrfTest.Router
end
