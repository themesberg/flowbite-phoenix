defmodule FlowbitePhoenixWeb.Icons.Media do
  use Phoenix.Component

  attr(:rest, :global,
    include: ~w(aria-hidden width height fill viewBox),
    default: %{
      "aria-hidden": "true",
      width: "24",
      height: "24",
      fill: "currentColor",
      viewBox: "0 0 24 24"
    }
  )

  def video_camera(assigns) do
    ~H"""
    <svg {@rest} xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M14 7a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V7Zm2 9.387 4.684 1.562A1 1 0 0 0 22 17V7a1 1 0 0 0-1.316-.949L16 7.613v8.774Z" clip-rule="evenodd"/>
    </svg>
    """
  end
end
