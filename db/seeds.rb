# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Delete all skills and user"

Booking.delete_all
Skill.destroy_all
User.destroy_all

skills = [{name: "Coding",
           description: "Basic knowledge in Python, Javaskript and SQL",
           price: 25,
           level: 2,
           img_url: "https://img.freepik.com/premium-photo/desktop-source-code-wallpaper-by-computer-language-with-coding-programming_33771-595.jpg"},
          {name: "Cook a Basic Italian Meal",
           description: "First dive into the Italian cuisine. Some Italian culinary traditions go back to the Roman Empire, became highly developed in Medieval and Renaissance Italy, and came to influence French cuisine. However, several of the ingredients stereotypically associated with Italian food, in particular tomatoes, originate in the Americas and did not reach Italy until the Italian Christopher Columbus sailed the ocean blue.",
           price: 10,
           level: 3,
           img_url: "https://www.eatthis.com/wp-content/uploads/sites/4/2022/08/italian-chef.jpg?quality=82&strip=1"},
          {name: "Moonwalk",
           description: "Wouldn’t it be cool to be able to glide along the floor as if super-humanly?",
           price: 30,
           level: 5,
           img_url: "https://m.media-amazon.com/images/I/51vMImAd8lL._AC_SX679_.jpg"},
          {name: "Solve a Rubik's Cube",
           description: "Rubik cubes seem like the ultimate unsolvable puzzle. But these little cubes are not impossible, as long as you understand the way they work.",
           price: 5,
           level: 2,
           img_url: "https://upload.wikimedia.org/wikipedia/commons/b/bb/Rubiks_cube_by_keqs.jpg"},
          {name: "Change a Tire",
           description: "Knowing how to change a flat tire can be the turning point in making a major issue into merely an inconvenience",
           price: 7,
           level: 2,
           img_url: "https://img.freepik.com/free-photo/car-mechanic-changing-wheels-car_1303-27471.jpg?w=2000"},
          {name: "Do pictures like a pro",
           description: "Being able to take amazing photographs may just make you a favorite among your friends",
           price: 20,
           level: 4,
           img_url: "https://i0.wp.com/blog.creativememories.com/wp-content/uploads/2019/02/camera-fall-fashion-1051076.jpg?fit=648%2C433&ssl=1"},
          {name: "Meditate like a Yogi",
           description: "With focus shifting to one well-being, meditation has become more and more common",
           price: 15,
           level: 1,
           img_url: "https://cdn.pixabay.com/photo/2016/05/10/21/50/meditation-1384758__480.jpg"},
          {name: "Tidy a closet like Marie Kondo",
           description: "You will have the perfect closet without any unnecessary stuff afterwards.",
           price: 5,
           level: 5,
           img_url: "https://media.architecturaldigest.com/photos/5ffc77f459423e064b2cdf4f/1:1/w_3314,h_3314,c_limit/TCS%20x%20KonMari_Closet_7.jpg"},
          {name: "Do Basic Home Repairs",
           description: "Knowing how to repair things around the house will save you both time and money",
           price: 5,
           level: 2,
           img_url: "https://img.freepik.com/premium-photo/group-men-ride-bike-sunset_36326-1094.jpg?w=2000"},
          {name: "Organize Your House",
           description: "Not only will organizing improve the aesthetics of your life, but it will also make your life easier.",
           price: 10,
           level: 4,
           img_url: "https://s3.amazonaws.com/ocn-media/23fd4138-37aa-4105-83f9-e10813c32eaf.jpg"},
          {name: "Skate like a pro",
           description: "Having the best skating skill as if you would join the next Olympic Games",
           price: 10,
           level: 5,
           img_url: "https://media.istockphoto.com/id/1209988354/photo/young-man-skateboarding-in-los-angeles.jpg?b=1&s=170667a&w=0&k=20&c=bHytV1SDJRsm-SREZ9GtXUvxCYzyy5d78GTS0D3z278="},
          {name: "Light a Fire without a lighter",
           description: "Being able to light a fire will always be a good skill to know",
           price: 10,
           level: 2,
           img_url: "https://pbblogassets.s3.amazonaws.com/uploads/2016/09/08153914/Campfire-Cover.jpg"},
          {name: "Manage Personal Finance",
           description: "Managing personal finances is something hardly anyone is taught, either at school or by parents.",
           price: 15,
           level: 3,
           img_url: "https://execed.esmt.berlin/sites/execed/files/styles/original/public/2021-08/Finance.JPG?itok=I7rSmMEe"},
          {name: "Karate",
            description: "Being able to karate like a black belt",
            price: 10,
            level: 5,
            img_url: "https://hensel.eu/wp-content/uploads/2019/05/patrick_urban_01.jpg"},
          {name: "Speaking Vietnamese",
            description: "Enables you to speak Vietnamese fluently",
            price: 10,
            level: 4,
            img_url: "https://media.istockphoto.com/id/495632233/photo/vietnamese-flag-close-up.jpg?s=612x612&w=0&k=20&c=8U8L00dBUFQCtdD0j6w_FIV7TEm8bScitazug7OUmfE="}
          ]

puts "Creating skills and users"

 skills.each do |skill|
  skill = Skill.new(name: skill[:name],
                    description: skill[:description],
                    price: skill[:price],
                    level: skill[:level],
                    img_url: skill[:img_url])
  skill.user = User.create(email: Faker::Internet.email, username: Faker::Internet.user, password: Faker::Internet.password)
  skill.save
 end

 puts "Creation complete"
