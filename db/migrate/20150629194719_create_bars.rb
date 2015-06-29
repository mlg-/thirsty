class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip, null: false
      t.text :description
      t.string :url
      t.string :photo_url
      t.integer :seating_capacity
      t.boolean :food
      t.boolean :outdoor_seating
      t.boolean :pet_friendly
      t.integer :category_id
      t.integer :good_for_id
      t.integer :price_range_id

      t.timestamps null: false
    end
  end
end
