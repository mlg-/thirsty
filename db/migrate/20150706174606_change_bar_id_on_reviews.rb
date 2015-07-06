class ChangeBarIdOnReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :bar_id, :string, null: false
    add_column :reviews, :bar_id, :integer, null: false
  end
end
