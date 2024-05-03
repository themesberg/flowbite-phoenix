defmodule FlowbitePhoenixWeb.Icons.Arrows do
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

  @spec arrow_right(map()) :: Phoenix.LiveView.Rendered.t()
  def arrow_right(assigns) do
    ~H"""
    <svg {@rest} xmlns="http://www.w3.org/2000/svg">
      <path
        fill-rule="evenodd"
        d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z"
        clip-rule="evenodd"
      >
      </path>
    </svg>
    """
  end
end
