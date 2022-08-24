# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "cleaning database"

user = User.create(email: "fantasyride@gmail.com", password: "fantasyride")

rides = Ride.create(title: "Harrypotter",image_url: "https://www.universalstudioshollywood.com/tridiondata/ush/en/us/files/images/universal-potter-forbidden-journey-art-802x535.jpg", price: 2000, starting_point: "earth", destination: "moon", seats: 5, user: user)

rides = Ride.create(title: "Batman",image_url: "https://saltlakecity.kidsoutandabout.com/sites/default/files/styles/hero_image/public/38612388_298769037545255_6139746025549594624_n.jpg", price: 4000, starting_point: "earth", destination: "moon", seats: 5, user: user)

rides = Ride.create(title: "Alien",image_url: "https://static.dw.com/image/37767170_303.jpg",price: 6000, starting_point: "earth", destination: "moon", seats: 5, user:user)

rides = Ride.create(title: "Harrypotter",image_url: "https://www.universalstudioshollywood.com/tridiondata/ush/en/us/files/images/universal-potter-forbidden-journey-art-802x535.jpg", price: 2000, starting_point: "earth", destination: "moon", seats: 5, user: user)

rides = Ride.create(title: "Batman",image_url: "https://saltlakecity.kidsoutandabout.com/sites/default/files/styles/hero_image/public/38612388_298769037545255_6139746025549594624_n.jpg", price: 4000, starting_point: "earth", destination: "moon", seats: 5, user: user)

rides = Ride.create(title: "Alien",image_url: "https://static.dw.com/image/37767170_303.jpg",price: 6000, starting_point: "earth", destination: "moon", seats: 5, user:user)
