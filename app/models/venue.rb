class Venue < ApplicationRecord
  def photo
    path = "venues/#{name.downcase.split.join('_')}.jpg"
    File.exist?("app/assets/images/#{path}") ? path : 'venues/kelsey_theatre.jpg'
  end
end
