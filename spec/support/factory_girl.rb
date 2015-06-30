require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end

  factory :bar do
    name "Beacon Hill Pub"
    address "123 Harrison Ave"
    city "Boston"
    state "MA"
    zip "02156"

    factory :bar2 do
      name "Drink"
      address "1234 Quenchtown Lane"
    end

    factory :bar3 do
      name "Mayo's Frozen Bar"
      address "22 Popsicle Lane"
    end

  end

end
