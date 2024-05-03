defmodule FlowbitePhoenixWeb.Blocks.Marketing.HeroComponents do
  use Phoenix.Component

  import FlowbitePhoenixWeb.Elements

  slot(:headline)
  slot(:subhead)
  slot(:cta)
  slot(:secondary_cta)
  slot(:inner_block)

  def default_hero(assigns) do
    ~H"""
    <section class="bg-white dark:bg-gray-900">
      <div class="py-8 px-4 mx-auto max-w-screen-xl text-center lg:py-16 lg:px-12">
        <.call_out>Flowbite is out! See what's new</.call_out>
        <h1 class="mb-4 text-4xl font-extrabold tracking-tight leading-none text-gray-900 md:text-5xl lg:text-6xl dark:text-white">
          <%= render_slot(@headline) %>
        </h1>
        <p class="mb-8 text-lg font-normal text-gray-500 lg:text-xl sm:px-16 xl:px-48 dark:text-gray-400">
          <%= render_slot(@subhead) %>
        </p>
        <div class="flex flex-col mb-8 lg:mb-16 space-y-4 sm:flex-row sm:justify-center sm:space-y-0 sm:space-x-4">
          <%= render_slot(@cta) %>
          <%= render_slot(@secondary_cta) %>
        </div>
        <div class="px-4 mx-auto text-center md:max-w-screen-md lg:max-w-screen-lg lg:px-36">
          <%= render_slot(@inner_block) %>
        </div>
      </div>
    </section>
    """
  end

  slot(:headline)
  slot(:subhead)
  slot(:cta)
  slot(:secondary_cta)
  slot(:inner_block)

  def visual_image_w_header(assigns) do
    ~H"""
    <section class="bg-white dark:bg-gray-900">
      <div class="grid max-w-screen-xl px-4 py-8 mx-auto lg:gap-8 xl:gap-0 lg:py-16 lg:grid-cols-12">
        <div class="mr-auto place-self-center lg:col-span-7">
          <h1 class="max-w-2xl mb-4 text-4xl font-extrabold tracking-tight leading-none md:text-5xl xl:text-6xl dark:text-white">
            <%= render_slot(@headline) %>
          </h1>
          <p class="max-w-2xl mb-6 font-light text-gray-500 lg:mb-8 md:text-lg lg:text-xl dark:text-gray-400">
            <%= render_slot(@subhead) %>
          </p>
          <%= render_slot(@cta) %>
          <%= render_slot(@secondary_cta) %>
        </div>
        <div class="hidden lg:mt-0 lg:col-span-5 lg:flex">
          <%= render_slot(@inner_block) %>
        </div>
      </div>
    </section>
    """
  end
end
