# frozen_string_literal: true

module ProductionsHelper
  def styled_text(text)
    ''
  end

  def lightbulb_icon(degrees)
    # TODO: use `filter: drop-shadow(0 -2px 4px yellow)` or something to "Light up" lightbulbs once color is picked
    content_tag(:i, '', class: "fa fa-2x fa-lightbulb-o fa-rotate-#{degrees.to_s}")
  end
end
