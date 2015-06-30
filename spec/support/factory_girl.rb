require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end

  factory :bar do
    sequence(:name) { |n| "Mayo's Frozen Bar #{n}" }
    sequence(:address) { |n| "123#{n} Mass Ave." }
    city "Boston"
    state "MA"
    zip "02156"
  end
  
end
