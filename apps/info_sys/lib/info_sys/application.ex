defmodule InfoSys.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Starts a worker by calling: InfoSys.Worker.start_link(arg)
      # new counter worker
      # {InfoSys.Counter, 5},
      # Supervisor.child_spec({InfoSys.Counter, 5}, restart: :temporary)
      InfoSys.Cache,
      {Task.Supervisor, name: InfoSys.TaskSupervisor}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: InfoSys.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
