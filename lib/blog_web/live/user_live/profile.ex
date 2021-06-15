defmodule BlogWeb.UserLive.Profile do
  use BlogWeb, :live_view

  @impl true
  def mount(%{"username" => username}, session, socket) do
    socket = assign_defaults(session, socket)

    {:ok, socket}
  end
end
