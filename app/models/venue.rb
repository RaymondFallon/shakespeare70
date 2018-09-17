class Venue < ApplicationRecord
  def photo
    path = "venues/#{name.downcase.split.join('_')}.jpg"
    File.exist?("app/assets/images/#{path}") ? path : 'member_photos/shakespeare.jpg'
  end

  def photo2
    path = "venues/#{name.downcase.split.join('_')}_2.jpg"
    File.exist?("app/assets/images/#{path}") ? path : 'member_photos/shakespeare.jpg'
  end
end
