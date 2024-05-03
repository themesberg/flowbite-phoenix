defmodule FlowbitePhoenixWeb.PageHTML do
  use FlowbitePhoenixWeb, :html

  import FlowbitePhoenixWeb.Elements
  import FlowbitePhoenixWeb.Logos
  import FlowbitePhoenixWeb.Blocks.Marketing.HeroComponents
  embed_templates("page_html/*")
end
