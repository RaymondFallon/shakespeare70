# frozen_string_literal: true

class Casting < ApplicationRecord
  self.table_name = :castings

  belongs_to :member, inverse_of: :castings
  belongs_to :production
  belongs_to :position
  belongs_to :bio_type

  has_many :photo_appearances, dependent: :restrict_with_exception, inverse_of: :casting
  has_many :production_photos, through: :photo_appearances

  delegate :company, to: :production

  default_scope do
    joins(:production).order('productions.year DESC NULLS LAST, productions.start_date DESC NULLS LAST')
  end
  scope :this_season, -> { where(bio_type: BioType.find_by(code: 'TS')) }
  scope :with_s70,    -> { where(bio_type: BioType.find_by(code: 'S70')) }
  scope :with_others, -> { where(bio_type: BioType.find_by(code: 'OC')) }

  scope :selected, -> { where selected: 'Y' }
  scope :not_selected, -> { where selected: nil }

  scope :acting_gig, -> { where(position: Position.find_by(code: 'A')) }
  scope :pro_staff, lambda {
    joins(:position).where.not(position: Position.find_by(code: 'A'))
                    .order('positions.bio_order ASC')
  }
end
