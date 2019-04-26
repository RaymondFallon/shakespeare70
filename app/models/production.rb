# frozen_string_literal: true

class Production < ApplicationRecord
  self.table_name = :productions

  belongs_to :company
  belongs_to :venue, optional: true

  has_many :photos, class_name: 'ProductionPhoto', dependent: :restrict_with_exception
  has_many :castings, dependent: :restrict_with_exception
  delegate :pro_staff, to: :castings

  scope :by_s70, -> { where(company: Company.find_by(name: "Shakespeare '70")) }
  scope :has_all_data, -> { where(has_all_data: 'Y') }

  def poster
    path = "production_posters/#{year}/#{title.downcase.split.join('_').gsub(/[\:\']/, '')}.jpg"
    File.exist?("app/assets/images/#{path}") ? path : 'production_posters/get_a_poster.jpg'
  end

  def photo
    poster
  end

  def cast_list
    castings.acting_gig.order(:cast_order)
  end

  def has_all_data?
    has_all_data == 'Y'
  end

  def has_recent_dates?
    start_date && end_date && Time.zone.now < 1.month.after(end_date)
  end
end
