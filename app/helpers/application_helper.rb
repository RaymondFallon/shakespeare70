# frozen_string_literal: true

module ApplicationHelper
  def error_class(model, column)
    model.errors[column].any? ? 'has-error' : ''
  end

  def error_field(model, column)
    return unless model.errors[column].any?
    model.errors[column].map { |error| "<span class=\"help-block\">#{error}</span>" }.join.html_safe
  end
end
