# frozen_string_literal: true

class CreateProductionPhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :production_photos do |t|
      t.string :url
      t.references :production
    end
  end
end
