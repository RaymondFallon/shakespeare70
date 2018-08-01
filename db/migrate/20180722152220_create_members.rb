class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :title
      t.string :photo_url

      t.text :bio
      t.string :current_season
      t.string :s70_credits
      t.string :other_credits

      t.timestamps
    end
  end
end
