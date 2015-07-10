class Vote < ActiveRecord::Base
  belongs_to :review
  belongs_to :user

  validates :value, presence: true, numericality: true,
                    inclusion: { in: [-1, 0, 1] }
  validates :review, presence: true
  validates :user, presence: true

  class << self
    def total_score(votes_array)
      score_array = votes_array.map { |v| v[:value] }
      total = score_array.reduce(:+)
      if score_array.empty?
        return 0
      else
        return total
      end
    end
  end
end
