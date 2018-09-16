# frozen_string_literal: true

module ProductionsHelper
  def styled_text(text)
    ''
  end

  def lightbulb_icon(degrees)
    content_tag(:i, '', class: "fa fa-2x fa-lightbulb-o fa-rotate-#{degrees.to_s}")
  end
end
