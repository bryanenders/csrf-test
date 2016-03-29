defmodule CsrfTest do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [supervisor(CsrfTest.Endpoint, [])]
    opts = [strategy: :one_for_one, name: CsrfTest.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    CsrfTest.Endpoint.config_change(changed, removed)
    :ok
  end
end
