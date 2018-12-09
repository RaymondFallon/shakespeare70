# frozen_string_literal: true

class Member < ApplicationRecord
  has_many :castings
  has_many :productions, through: :castings

  scope :featured, -> { where(featured: 'Y') }

  def name
    first_name + ' ' + last_name
  end

  def photo_url
    path = "member_photos/#{name.downcase.split.join('_')}.jpg"
    File.exist?("app/assets/images/#{path}") ? path : 'member_photos/shakespeare.jpg'
  end

  def photo
    photo_url
  end

  def ex_comm?
    exec_committee == 'Y'
  end
end
