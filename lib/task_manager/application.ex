defmodule TaskManager.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      TaskManagerWeb.Telemetry,
      TaskManager.Repo,
      {DNSCluster, query: Application.get_env(:task_manager, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: TaskManager.PubSub},
      # Start a worker by calling: TaskManager.Worker.start_link(arg)
      # {TaskManager.Worker, arg},
      # Start to serve requests, typically the last entry
      TaskManagerWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TaskManager.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    TaskManagerWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
