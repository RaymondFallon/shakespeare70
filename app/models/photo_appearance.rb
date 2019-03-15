# frozen_string_literal: true

class PhotoAppearance < ApplicationRecord
  belongs_to :photo, class_name: 'ProductionPhoto'
  belongs_to :casting

  delegate :production, to: :photo
  delegate :member, to: :casting
end
