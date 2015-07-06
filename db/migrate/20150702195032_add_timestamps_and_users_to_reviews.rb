class AddTimestampsAndUsersToReviews < ActiveRecord::Migration
  def change
    add_column(:reviews, :created_at, :datetime)
    add_column(:reviews, :updated_at, :datetime)
    add_column(:reviews, :user_id, :integer)
  end
end
