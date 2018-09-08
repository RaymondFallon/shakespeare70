class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :exec_committee, limit: 1
      t.string :featured, limit: 1
      t.string :photo_url
      t.text :bio

      t.timestamps
    end
  end
end
