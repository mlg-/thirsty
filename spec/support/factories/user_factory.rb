require 'factory_girl'
require_relative 'bar_factory.rb'

FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
    admin false

    factory :admin do
      admin true
    end
  end
end
