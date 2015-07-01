class Review < ActiveRecord::Base
  belongs_to :bar
  validates :title, presence: true
  validates :rating, presence: true, inclusion: { in: 1..5 }
  validates :body, presence: true
  validates :bar_id, presence: true
end