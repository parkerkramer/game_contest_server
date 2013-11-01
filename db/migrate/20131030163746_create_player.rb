class CreatePlayer < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :file_location
      t.text :description
      t.string :name
      t.boolean :downloadable
      t.boolean :playable
      t.integer :user_id
      t.integer :contest_id

      t.timestamps
    end
  end
end
