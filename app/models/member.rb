# frozen_string_literal: true

class Member < ApplicationRecord
  self.table_name = :members

  has_many :castings, dependent: :restrict_with_exception, inverse_of: :member
  has_many :productions, through: :castings
  has_many :photo_appearances, through: :castings
  has_many :production_photos, through: :photo_appearances

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

  def random_photos(count)
    appearances = castings.map(&:photo_appearances)&.flatten
    return if appearances.empty?

    appearances.sample(count).map(&:photo)
  end

  def ex_comm?
    exec_committee == 'Y'
  end
end
