defmodule FlowbitePhoenixWeb.PageController do
  use FlowbitePhoenixWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def hero(conn, _params) do
    render(conn, :hero)
  end
end
