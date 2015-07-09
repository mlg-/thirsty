require 'factory_girl'

FactoryGirl.define do
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
end
