# frozen_string_literal: true

class ProductionPhoto < ApplicationRecord
  belongs_to :production
  has_many :appearances, class_name: 'PhotoAppearance', inverse_of: :photo, dependent: :restrict_with_exception

  validates :url, :production, presence: { message: 'Field cannot be blank.' }
end
