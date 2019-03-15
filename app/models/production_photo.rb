# frozen_string_literal: true

class ProductionPhoto < ApplicationRecord
  self.table_name = :production_photos

  belongs_to :production
  has_many :appearances, class_name: 'PhotoAppearance', inverse_of: :production_photo, dependent: :restrict_with_exception
  has_many :castings, through: :appearances

  validates :url, :production, presence: { message: 'Field cannot be blank.' }

  def description
    people = appearances.count > 2 ? description_without_roles : description_with_roles

    "#{people} in <i>#{production.title}</i> (#{production.year})".html_safe
  end

  def description_with_roles
    castings = appearances.order(:order_in_photo).map(&:casting)
    castings.each_with_object([]).with_index do |(casting, arr), idx|
      arr << "#{'and' if idx == castings.size - 1} #{casting.member.name} as #{casting.role}"
    end.join(castings.size > 2 ? ', ' : ' ')
  end

  def description_without_roles
    castings = appearances.order(:order_in_photo).map(&:casting)
    castings.each_with_object([]).with_index do |(casting, arr), idx|
      arr << "#{'and' if idx == castings.size - 1} #{casting.member.name}"
    end.join(castings.size > 2 ? ', ' : ' ')
  end
end
