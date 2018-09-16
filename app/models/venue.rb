class Venue < ApplicationRecord
  def photo
    path = "venues/#{name.downcase.split.join('_')}.jpg"
    File.exist?("app/assets/images/#{path}") ? path : 'member_photos/get_your_headshot.jpg'
  end
end
