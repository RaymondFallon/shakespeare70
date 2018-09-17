# frozen_string_literal: true

class Casting < ApplicationRecord
  belongs_to :member
  belongs_to :production
  belongs_to :position
  belongs_to :bio_type

  scope :this_season, -> { where(bio_type: BioType.find_by(code: 'TS')) }
  scope :with_s70,    -> { where(bio_type: BioType.find_by(code: 'S70')) }
  scope :with_others, -> { where(bio_type: BioType.find_by(code: 'OC')) }

  scope :acting_gig, -> { where(position: Position.find_by(code: 'A')) }
  scope :pro_staff, lambda {
    joins(:position).where.not(position: Position.find_by(code: 'A'))
                    .order('positions.bio_order ASC')
  }
end
