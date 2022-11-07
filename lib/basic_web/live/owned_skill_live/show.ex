defmodule BasicWeb.OwnedSkillLive.Show do
  use BasicWeb, :live_view

  alias Basic.OwnedSkills

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:owned_skill, OwnedSkills.get_owned_skill!(id))}
  end

  defp page_title(:show), do: "Show Owned skill"
  defp page_title(:edit), do: "Edit Owned skill"
end
