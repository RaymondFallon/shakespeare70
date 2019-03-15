class Production < ApplicationRecord
  belongs_to :company
  belongs_to :venue, optional: true

  has_many :castings, dependent: :restrict_with_exception
  has_many :photos, class_name: 'ProductionPhoto', dependent: :restrict_with_exception

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

  def pro_staff
    castings.pro_staff
  end

  def has_all_data?
    has_all_data == 'Y'
  end
end
