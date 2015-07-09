require 'factory_girl'
require_relative 'user_factory'
require_relative 'review_factory'

FactoryGirl.define do
  factory :vote do
    user
    review

    factory :upvote do
      value 1
    end

    factory :downvote do
      value -1
    end
  end
end
