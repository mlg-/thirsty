class Vote < ActiveRecord::Base
  belongs_to :review
  belongs_to :user

  validates :value, presence: true, numericality: true,
                    inclusion: { in: [-1, 0, 1] }
  validates :review, presence: true
  validates :user, presence: true

  class << self
    def total_score(votes_array)
      total = votes_array.map { |v| v[:value] }
      score = total.reduce(:+)
    end
  end
end
