defmodule FlowbitePhoenixWeb.PageHTML do
  use FlowbitePhoenixWeb, :html

  import FlowbitePhoenixWeb.{Elements, Logos}
  import FlowbitePhoenixWeb.Icons.{Arrows, Media}
  import FlowbitePhoenixWeb.Blocks.Marketing.HeroComponents
  embed_templates("page_html/*")
end
