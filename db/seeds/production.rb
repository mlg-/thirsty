Bar.create!(name: "Beacon Hill Pub",
            address: "149 Charles St",
            city: "Boston",
            state: "Massachusetts",
            zip: "02108",
            description: "Dive bar with fun pub arcade games.",
            url: "https://www.facebook.com/pages/The-Beacon-Hill-Pub/131684050683",
            photo_url: "http://www.yelp.com/biz_photos/shojo-boston-2",
            seating_capacity: 268,
            food: false,
            outdoor_seating: false,
            pet_friendly: false
            )

Bar.create!(name: "Shojo",
            address: "9A Tyler St.",
            city: "Boston",
            state: "Massachusetts",
            zip: "02111",
            description: "Hip Asian fusion cuisine with unique drinks.",
            url: "http://www.shojoboston.com/",
            photo_url: "http://www.yelp.com/biz_photos/beacon-hill-pub-boston?",
            seating_capacity: 80,
            food: true,
            outdoor_seating: false,
            pet_friendly: false
            )

Bar.create!(name: "Frost Ice Loft",
            address: "Faneuil Hall Market Pl, 200 State St N Bldg 3rd Fl",
            city: "Boston",
            state: "Massachusetts",
            zip: "02109",
            description: "Small cocktail bar made entirely of ice.",
            url: "http://frosticeloft.com/",
            photo_url: "http://frosticeloft.com/#scroll-6",
            seating_capacity: 150,
            food: false,
            outdoor_seating: false,
            pet_friendly: false
            )

Bar.create!(name: "21st Amendment",
            address: "150 Bowdoin Sq.",
            city: "Boston",
            state: "Massachusetts",
            zip: "02108",
            description: "Low-key watering hole (across from the State House) serving beer, cocktails & bar bites.",
            url: "http://21stboston.com/",
            photo_url: "http://www.yelp.com/biz_photos/21st-amendment-boston?",
            seating_capacity: 96,
            food: true,
            outdoor_seating: false,
            pet_friendly: false
            )

Bar.create!(name: "The Hill Tavern",
            address: "228 Cambridge St.",
            city: "Boston",
            state: "Massachusetts",
            zip: "02114",
            description: "Classic-feeling neighborhood joint serving bar food & weekend brunch, plus seasonal beers & drinks.",
            url: "www.thehilltavern.com/",
            photo_url: "http://www.thehilltavern.com/gallery.html",
            seating_capacity: 150,
            food: true,
            outdoor_seating: true,
            pet_friendly: false
            )

Bar.create!(name: "Estragon",
            address: "700 Harrison Ave.",
            city: "Boston",
            state: "Massachusetts",
            zip: "02118",
            description: "Airy dining room for inspired renderings of Spanish favorites, creative cocktails & large wine list.",
            url: "http://www.estragontapas.com/",
            photo_url: "http://www.estragontapas.com/",
            seating_capacity: 106,
            food: true,
            outdoor_seating: true,
            pet_friendly: true
            )

Bar.create!(name: "Corner Cafe",
            address: "87 Prince St.",
            city: "Boston",
            state: "Massachusetts",
            zip: "02113",
            description: "Late-night neighborhood hangout offering booze, casual grub & sports TVs in a down-to-earth setting.",
            url: "None",
            photo_url: "www.yelp.com/biz_photos/corner-cafe-boston?/",
            seating_capacity: 32,
            food: false,
            outdoor_seating: false,
            pet_friendly: false
            )

Bar.create!(name: "75 Chestnut",
            address: "75 Chestnut St.",
            city: "Boston",
            state: "Massachusetts",
            zip: "02108",
            description: "Beacon Hill haunt serving a variety of simple American dishes in quaint quarters with a rustic bar.",
            url: "http://75chestnut.com/",
            photo_url: "http://75chestnut.com/gallery/",
            seating_capacity: 85,
            food: true,
            outdoor_seating: false,
            pet_friendly: false
            )

Bar.create!(name: "JJ Foley's Bar & Grille",
            address: "21 Kingston St.",
            city: "Boston",
            state: "Massachusetts",
            zip: "02111",
            description: "Neighborhood pub founded in 1909 offering Irish-American eats & diversions such as TVs & darts.",
            url: "https://www.facebook.com/pages/JJ-Foleys/43154335890",
            photo_url: "www.yelp.com/biz_photos/jj-foleys-bar-and-grille-boston?",
            seating_capacity: 219,
            food: true,
            outdoor_seating: false,
            pet_friendly: false
            )

Bar.create!(name: "Scampo",
            address: "The Liberty Hotel, 215 Charles St.",
            city: "Boston",
            state: "Massachusetts",
            zip: "02114",
            description: "Liberty Hotel's chic destination (& former jailhouse) for Italian fare & mozzarella bar.",
            url: "http://scampoboston.com/",
            photo_url: "http://scampoboston.com/gallery/",
            seating_capacity: 392,
            food: true,
            outdoor_seating: true,
            pet_friendly: false
            )

Review.create!(title: "YUM!",
              rating: 3,
              body: "Fantastic mozzarella bar, and everything from appetizer to dessert is outstanding.",
              user_id: 1,
              bar_id: 10
)

Review.create!(title: "Fix the basketball hoop!",
              rating: 3,
              body: "SO bro-y and SO fun. Cash only. Don't try to order red wine otherwise people will make fun of you. They have the basketball arcade game in the back, but one of the hoops is always broken which is aggravating - taking off a star for that. (Please fix it!!)",
              user_id: 1,
              bar_id: 1
)

Review.create!(title: "Great deals!",
              rating: 3,
              body: "I just LUV Beacon Hill Pub! Great deals! Terrific discounts! I got a vodka drink for just 4 buckaroonies! WOW! I def recommend this hang out!",
              user_id: 1,
              bar_id: 1
)

Review.create!(title: "Great menu",
              rating: 4,
              body: "The cocktail menu had really interesting drinks and the cold tea for two was so refreshing.",
              user_id: 2,
              bar_id: 2
)

Review.create!(title: "Get the gin gin!",
              rating: 4,
              body: "Of course duck fat fries on the side and their special gin gin mule which is my favorite!",
              user_id: 3,
              bar_id: 2
)

Review.create!(title: "It's cold!",
              rating: 4,
              body: "We wore these capes that kept us from becoming popsicles. The ice is real!",
              user_id: 3,
              bar_id: 3
)

Review.create!(title: "It's cold!",
              rating: 4,
              body: "Being from Canada, I don't know why we tried this place, as the cold and frost are not novelties to us LOL... nonetheless it was still pretty neat!",
              user_id: 4,
              bar_id: 3
)

User.create!(email: "joelauncher@mailinator.com",
            password: "MLGcdMMdv",
            admin: false
)

User.create!(email: "tracy0279@mailinator.com",
            password: "MLGcdMMdv",
            admin: false
)

User.create!(email: "sirbeersalot@mailinator.com",
            password: "MLGcdMMdv",
            admin: false
)

User.create!(email: "saraholdren@mailinator.com",
            password: "MLGcdMMdv",
            admin: false
)

User.create!(email: "jonsey@mailinator.com",
            password: "MLGcdMMdv",
            admin: false
)

User.create!(email: "billiamwiggins@mailinator.com",
            password: "MLGcdMMdv",
            admin: false
)

User.create!(email: "josephinesera@mailinator.com",
            password: "MLGcdMMdv",
            admin: false
)

User.create!(email: "mikewalsh@mailinator.com",
            password: "MLGcdMMdv",
            admin: false
)

User.create!(email: "whiskeylover@mailinator.com",
            password: "MLGcdMMdv",
            admin: false
)

User.create!(email: "barfly@mailinator.com",
            password: "MLGcdMMdv",
            admin: true
)
