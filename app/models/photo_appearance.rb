# frozen_string_literal: true

class PhotoAppearance < ApplicationRecord
  self.table_name = :photo_appearances

  belongs_to :production_photo, inverse_of: :appearances
  belongs_to :casting, inverse_of: :photo_appearances

  delegate :production, to: :photo
  delegate :member, to: :casting

  def photo
    production_photo
  end
end
