# frozen_string_literal: true

module ApplicationHelper
  def error_class(model, column)
    model.errors[column].any? ? 'has-error' : ''
  end

  def error_field(model, column)
    return unless model.errors[column].any?
    model.errors[column].map { |error| "<span class=\"help-block\">#{error}</span>" }.join.html_safe
  end

  def class_for_img(img_path, elevation_height = 4)
    elevation_class = img_path[-3, 3] == 'png' ? '' : "elevation-#{elevation_height}"
    "img-fluid #{elevation_class} mt-2 mb-2"
  end
end
