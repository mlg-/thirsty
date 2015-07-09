require 'factory_girl'
require_relative 'bar_factory'
require_relative 'user_factory'

FactoryGirl.define do
  factory :review do
    sequence(:title) { |n| "This bar is awesome #{n}" }
    rating 5
    body "The food, drinks and service are amazing"
    bar
    user
  end
end