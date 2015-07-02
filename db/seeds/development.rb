12.times do |n|
  Bar.create!(name: "Mayos Frozen Bar #{n}",
              address: "234 That Street #{n}",
              city: "Boston",
              state: "Massachusetts",
              zip: "02345",
              description: "You won't believe it. You just won't",
              url: "http://thatsite.com",
              photo_url: "http://thatothersite.com",
              seating_capacity: 4,
              food: true,
              outdoor_seating: false,
              pet_friendly: true)
end
