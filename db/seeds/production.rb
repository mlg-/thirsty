Bar.create!(name: "Beacon Hill Pub",
            address: "149 Charles St",
            city: "Boston",
            state: "Massachusetts",
            zip: "02108",
            description: "Dive bar with fun pub arcade games.",
            url: "https://www.facebook.com/pages/The-Beacon-Hill-Pub/
            131684050683",
            photo_url: "http://www.hubnightlife.com/wp-content/gallery/
            beacon-hill-pub/beacon-hill-pub-1.jpg",
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
            photo_url: "http://s3-media4.fl.yelpcdn.com/bphoto/
            4CM-xJvBeUEf24taHCaOog/o.jpg",
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
            photo_url: "http://frosticeloft.com/wp-content/uploads/2015/06/
            FrostIceBar_Interior7.0.0-1.jpg",
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
            description: "Low-key watering hole (across from the State House)
            serving beer, cocktails & bar bites.",
            url: "http://21stboston.com/",
            photo_url: "http://21stboston.com/_images/sec/directions.jpg",
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
            description: "Classic-feeling neighborhood joint serving bar food &
            weekend brunch, plus seasonal beers & drinks.",
            url: "www.thehilltavern.com/",
            photo_url: "https://c1.staticflickr.com/1/158/
            362072340_117676a43e_b.jpg",
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
            description: "Airy dining room for inspired renderings of Spanish
            favorites, creative cocktails & large wine list.",
            url: "http://www.estragontapas.com/",
            photo_url: "http://cache.boston.com/bonzai-fba/Original_Photo/
            2009/01/22/estragonerikjacobs__1232642483_9319.jpg",
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
            description: "Late-night neighborhood hangout offering booze,
            casual grub & sports TVs in a down-to-earth setting.",
            url: "None",
            photo_url: "http://www.north-end-boston.com/images/exterior_pics/
            3715.jpg",
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
            description: "Beacon Hill haunt serving a variety of simple American
             dishes in quaint quarters with a rustic bar.",
            url: "http://75chestnut.com/",
            photo_url: "http://www.hubnightlife.com/wp-content/gallery/
            75-chestnut/75-chesnut-5.jpg",
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
            description: "Neighborhood pub founded in 1909 offering
            Irish-American eats & diversions such as TVs & darts.",
            url: "https://www.facebook.com/pages/JJ-Foleys/43154335890",
            photo_url: "https://cbsboston.files.wordpress.com/2012/03/
            nightlife-music-jukebox-bars-jj-foleys-bar-grill.png",
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
            description: "Liberty Hotel's chic destination (& former jailhouse)
            for Italian fare & mozzarella bar.",
            url: "http://scampoboston.com/",
            photo_url: "http://www.tinyurbankitchen.com/wp-content/
            uploads/2011/09/5671710170_f32480082c_o.jpg",
            seating_capacity: 392,
            food: true,
            outdoor_seating: true,
            pet_friendly: false
            )

Review.create!(title: "Fix the basketball hoop!",
               rating: 3,
               body: "SO bro-y and SO fun. Cash only. Don't try to order red
               wine otherwise people will make fun of you. They have the
               basketball arcade game in the back, but one of the hoops is
               always broken which is aggravating - taking off a star for that.
               (Please fix it!!)",
               user_id: 1,
               bar_id: 1
)

Review.create!(title: "Great deals!",
               rating: 3,
               body: "I just LUV Beacon Hill Pub! Great deals! Terrific
               discounts! I got a vodka drink for just 4 buckaroonies! WOW!
               I def recommend this hang out!",
               user_id: 1,
               bar_id: 1
)

Review.create!(title: "Great menu",
               rating: 4,
               body: "Been four times now. Awesome food, cool ambiance,
               surprisingly good service. The cocktail menu had really
               interesting drinks and the cold tea for two was so refreshing.",
               user_id: 2,
               bar_id: 2
)

Review.create!(title: "Get the gin gin!",
               rating: 4,
               body: "The space is pretty cool. It's fairly dark inside with
               some graphics on the walls, industrial-sleek furnishings and a
               large bar. Of course I got the duck fat fries and their special
               gin gin mule which is my favorite!",
               user_id: 3,
               bar_id: 2
)

Review.create!(title: "It's cold!",
               rating: 4,
               body: "We wore these capes that kept us from becoming popsicles.
               The ice is real!",
               user_id: 3,
               bar_id: 3
)

Review.create!(title: "Neat-o",
               rating: 3,
               body: "Being from Canada, I don't know why we tried this place,
               as the cold and frost are not novelties to us LOL... nonetheless
               it was still pretty neat!",
               user_id: 4,
               bar_id: 3
)

Review.create!(title: "My new spot",
               rating: 5,
               body: "Came here to watch a football game... which was a bad idea
               because there are only 2 tiny TV's. But I would love to come here
               to hang out with my friends. I want this to be my spot. So cozy,
               warm, and reasonably priced.\n
               My friends and I got the chicken BLT and a burger, plus sweet
               potato fries. Ate every bite, totally tasty.\n
               Its just a little gem in a big city.",
               user_id: 4,
               bar_id: 4
)

Review.create!(title: "My new spot",
               rating: 3,
               body: "This place was alright. I got the loaded nachos. It was
               actually really good. I added the gaucamole and it was worth it.
               Nachos are a great plate to share and I did share it with 3 other
               people. I could not even finish it, it was very much loaded.\n
               Different variety of beers. i got the watermelon kind, but it was
               not great. Just stick to something you know. Server did not know
               much about what was on draft and service was not that great, but
               food was good.",
               user_id: 5,
               bar_id: 4
)

Review.create!(title: "Good food, spotty service",
               rating: 4,
               body: "Food very good.  We had a party of ten and all the food
               came out together - and still warm. Service was good not great.
               The menu had a wide variety so had something even for picky
               eaters. The have a nice outside eating area but doesn't
               accommodate a large party.",
               user_id: 5,
               bar_id: 5
)

Review.create!(title: "Get better help!",
               rating: 1,
               body: "I usually like this place but the past few times have been
               horrible. The servers are inexperienced and are not attentive at
               all. I experienced the worst service last week when I was served
               a flat beer (after waiting 20 min). Because the server didn't
               ever come back to the table, I went to the bar and asked the
               bartender (the balding man with glasses) if I could get something
               else since it was flat. He said the keg had just turned over so I
               had to deal with it and would not give me another beer
               (and he walked away) The worst customer service in the 2 years I
               have been in Boston. I used to be a bartender - customers should
               always be taken care of no matter what.",
               user_id: 6,
               bar_id: 5
)

Review.create!(title: "Delicioso!",
               rating: 5,
               body: "We 'stumbled' upon this place seeing that getting into
               toro or barcelona wine bar was near impossible.\n
               A wee bit out of the way, at least I thought so BUT well worth
               the visit. The place isn't overcrowded - food, drinks and
               service are great. You are not rushed, portions are generous
               and the wait staff are most helpful with suggestions. So A-plus
               for this find and well worth a return trip.\n
               Drinks are great and they will pretty much offer suggestions or
               get you something you fancy.",
               user_id: 6,
               bar_id: 6
)

Review.create!(title: "Small but tasty sangria",
               rating: 3,
               body: "Came here with some coworkers for some tapas and drinks.
               This place fills up quickly from after work crowd so definitely
               come closer to 5pm. The service was attentive, but ultimately the
               food was just OK. I ordered the sangria and that was pretty
               tasty, although small.",
               user_id: 7,
               bar_id: 6
)

Review.create!(title: "RAY IS MAGICIAN",
               rating: 5,
               body: "The Corner Cafe is a great neighborhood dive bar.
               I have now been dropping in to this establishment for over two
               years. Whether its a quick beer before a Celtics game or a night
               propping up the bar, this is a great relaxed little place. Ray
               the bartender has mastered the art of making a perfect martini.
               THE MAN IS A MAGICIAN!",
               user_id: 7,
               bar_id: 7
)

Review.create!(title: "Great dive",
               rating: 4,
               body: "A dive. Excellent! Drink beer and don't impress anyone.
               And if the bartender doesn't like you, it's probably because
               you're a jerk!",
               user_id: 8,
               bar_id: 7
)

Review.create!(title: "Pricey",
               rating: 4,
               body: "They're more of a 3.5 borderline 4.\n
               During our visit to Boston we stopped here for some brunch before
               heading out. I didn't see reviews before hand and just went with
               the recommendation that this place is good.\n
               While, my food was definitely delicious the cocktails were only
               decent. I mean at $13 a cocktail, come correct. GIVE ME A DARN
               GREAT COCKTAIL. Sheesh.",
               user_id: 8,
               bar_id: 8
)

Review.create!(title: "Cocktail costs what?",
               rating: 3,
               body: "We stopped in after a 5 hour car ride at 9:30PM on a
               Friday and were seated immediately. We were happy to find that
               it was Boston's restaurant week and chose to dine from the
               select menu.\n
               He got a watermelon mojito and I got a Boston sunset which was
               delectable after being(sober) in the car for so long.
               Beware-I didn't see prices on the menu and the drinks are about
               $15 each. ",
               user_id: 9,
               bar_id: 8
)

Review.create!(title: "Feels like home",
               rating: 3,
               body: "So happy I came. Great atmosphere, great bartenders, great
               juke box. Made this northwesterner feel right at home.",
               user_id: 9,
               bar_id: 9
)

Review.create!(title: "Feels like home",
               rating: 4,
               body: "Great lively atmosphere with an internet jukebox and lots
               of booths. Good prompt and friendly service and good draft beer
               selection. A great local pub!",
               user_id: 10,
               bar_id: 9
)

Review.create!(title: "YUM!",
               rating: 3,
               body: "Fantastic mozzarella bar, and everything from appetizer to
               dessert is outstanding.",
               user_id: 1,
               bar_id: 10
)

Review.create!(title: "YUM!",
               rating: 3,
               body: "While visiting Boston a couple weeks ago, my cousin
               recommend I stop in this bar. My friend and I stopped in for a
               quick drink and were more than pleased we did. The liberty hotel
               was converted from a prison to a hotel so the architecture of the
               hotel is amazing and super interesting to see. The bar inside the
               hotel is very trendy and appeals to the history of the hotel.\n
               I ordered one of the cocktails (I don't remember the exact name
               winter moon I think) that was absolutely delicious. They also had
               an extensive wine list. We did not eat there so I can not comment
               on the food but they did have a gluten free menu",
               user_id: 10,
               bar_id: 10
)

User.create!(email: "steve-o@mailinator.com",
             password: ENV["USER_PASSWORD"],
             admin: false
)

User.create!(email: "tracy0279@mailinator.com",
             password: ENV["USER_PASSWORD"],
             admin: false
)

User.create!(email: "sirbeersalot@mailinator.com",
             password: ENV["USER_PASSWORD"],
             admin: false
)

User.create!(email: "saraholdren@mailinator.com",
             password: ENV["USER_PASSWORD"],
             admin: false
)

User.create!(email: "jonsey@mailinator.com",
             password: ENV["USER_PASSWORD"],
             admin: false
)

User.create!(email: "billiamwiggins@mailinator.com",
             password: ENV["USER_PASSWORD"],
             admin: false
)

User.create!(email: "josephinesera@mailinator.com",
             password: ENV["USER_PASSWORD"],
             admin: false
)

User.create!(email: "mikewalsh@mailinator.com",
             password: ENV["USER_PASSWORD"],
             admin: false
)

User.create!(email: "whiskeylover@mailinator.com",
             password: ENV["USER_PASSWORD"],
             admin: false
)

User.create!(email: "barfly@mailinator.com",
             password: ENV["USER_PASSWORD"],
             admin: true
)
