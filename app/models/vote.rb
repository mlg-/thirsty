class Vote < ActiveRecord::Base
  belongs_to :review
  belongs_to :user

  validates :value, presence: true, numericality: true,
            inclusion: { in: [-1, 1] }
  validates :review, presence: true
  validates :user, presence: true
end
