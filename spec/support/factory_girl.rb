require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
    admin false

    factory :admin do
      admin true
    end
  end

  factory :bar do
    sequence(:name) { |n| "Mayos Frozen Bar #{n}" }
    sequence(:address) { |n| "123#{n} Mass Ave." }
    city "Boston"
    state "Massachusetts"
    zip "02156"
    description %{You won't believe the bartender's legal.
                  (because he's not).}
    url "http://blah.com"
    photo_url "http://www.yay.com"
    seating_capacity 70
    food true
    outdoor_seating false
    pet_friendly true
  end

  factory :review do
    sequence(:title) { |n| "This bar is awesome #{n}" }
    rating 5
    body "The food, drinks and service are amazing"
    bar
    user
  end

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
