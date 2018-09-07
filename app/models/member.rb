class Member < ApplicationRecord
  has_many :castings

  def name
    first_name + ' ' + last_name
  end
end
