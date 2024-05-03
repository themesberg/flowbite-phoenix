defmodule FlowbitePhoenixWeb.Elements do
  use Phoenix.Component

  attr(:href, :string, required: true)
  attr(:label, :string, required: true)
  attr(:leading, :boolean, default: false)
  attr(:trailing, :boolean, default: false)

  attr(:class, :string,
    default:
      "inline-flex justify-center items-center py-3 px-5 text-base font-medium text-center text-gray-900 rounded-lg border border-gray-300 hover:bg-gray-100 focus:ring-4 focus:ring-gray-100 dark:text-white dark:border-gray-700 dark:hover:bg-gray-700 dark:focus:ring-gray-800"
  )

  slot(:inner_block)

  def icon_button(assigns) do
    ~H"""
    <a href={@href} class={@class}>
      <%= if @leading do %>
        <%= render_slot(@inner_block) %>
      <% end %>
      <%= @label %>
      <%= if @trailing do %>
        <%= render_slot(@inner_block) %>
      <% end %>
    </a>
    """
  end

  attr(:label, :string, default: "New")
  slot(:inner_block, required: true)

  def call_out(assigns) do
    ~H"""
    <a
      href="#"
      class="inline-flex justify-between items-center py-1 px-1 pr-4 mb-7 text-sm text-gray-700 bg-gray-100 rounded-full dark:bg-gray-800 dark:text-white hover:bg-gray-200 dark:hover:bg-gray-700"
      role="alert"
    >
      <span class="text-xs bg-primary-600 rounded-full text-white px-4 py-1.5 mr-3">
        <%= @label %>
      </span>
      <span class="text-sm font-medium"><%= render_slot(@inner_block) %></span>
      <svg
        class="ml-2 w-5 h-5"
        fill="currentColor"
        viewBox="0 0 20 20"
        xmlns="http://www.w3.org/2000/svg"
      >
        <path
          fill-rule="evenodd"
          d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
          clip-rule="evenodd"
        >
        </path>
      </svg>
    </a>
    """
  end
end
