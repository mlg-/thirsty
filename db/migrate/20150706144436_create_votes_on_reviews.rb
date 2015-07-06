class CreateVotesOnReviews < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :value, null: false
      t.integer :review_id, null: false
      t.integer :user_id, null: false
    end
  end
end
