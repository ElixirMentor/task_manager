defmodule TaskManagerWeb.PageController do
  use TaskManagerWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
