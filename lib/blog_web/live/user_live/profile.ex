defmodule BlogWeb.UserLive.Profile do
  use BlogWeb, :live_view

  alias Blog.Accounts

  @impl true
  def mount(%{"username" => username}, session, socket) do
    socket = assign_defaults(session, socket)
    user = Accounts.profile(username)

    {:ok,
      socket
      |> assign(user: user)
      |> assign(page_title: "#{user.full_name} (@#{user.username})")
    }
  end

  @impl true
  def handle_params(_params, _uri, socket) do
    {:noreply, socket}
  end
end
