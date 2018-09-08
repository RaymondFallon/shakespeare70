# frozen_string_literal: true

class Member < ApplicationRecord
  has_many :castings

  scope :featured, -> { where(featured: 'Y') }

  def name
    first_name + ' ' + last_name
  end

  def photo_url
    path = "member_photos/#{name.downcase.split.join('_')}.jpg"
    File.exist?("app/assets/images/#{path}") ? path : 'member_photos/get_your_headshot.jpg'
  end
end
