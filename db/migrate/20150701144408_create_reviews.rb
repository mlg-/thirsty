class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title, null: false
      t.integer :rating, null: false
      t.string :body, null: false
      t.string :bar_id, null: false
    end
  end
end
