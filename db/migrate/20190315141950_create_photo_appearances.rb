# frozen_string_literal: true

class CreatePhotoAppearances < ActiveRecord::Migration[5.1]
  def change
    create_table :photo_appearances do |t|
      t.references :production_photo
      t.references :casting
      t.string :is_featured, limit: 1, default: 'Y'
      t.integer :order_in_photo, limit: 3
    end
  end
end
