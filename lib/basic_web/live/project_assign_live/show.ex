defmodule BasicWeb.ProjectAssignLive.Show do
  use BasicWeb, :live_view

  alias Basic.ProjectAssigns

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:project_assign, ProjectAssigns.get_project_assign!(id))}
  end

#  defp page_title(:show), do: "Show Project assign"
#  defp page_title(:edit), do: "Edit Project assign"
  defp page_title(:show), do: "プロジェクトアサイン詳細"
  defp page_title(:edit), do: "プロジェクトアサイン編集"
end
