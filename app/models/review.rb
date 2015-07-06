class Review < ActiveRecord::Base
  belongs_to :bar
  belongs_to :user
  validates :title, presence: true
  validates :rating, presence: true, inclusion: { in: 1..5 }
  validates :body, presence: true
  validates :bar, presence: true
  validates :user, presence: true
end
