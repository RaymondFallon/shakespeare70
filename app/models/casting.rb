# frozen_string_literal: true

class Casting < ApplicationRecord
  belongs_to :member
  belongs_to :production
  belongs_to :position
  belongs_to :bio_type

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
