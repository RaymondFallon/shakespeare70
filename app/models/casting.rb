class Casting < ApplicationRecord
  belongs_to :member
  belongs_to :production
  belongs_to :position
  belongs_to :bio_type
end
