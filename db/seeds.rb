# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Watch.destroy_all
User.destroy_all


puts "creation des users"

ben = User.create!(email: "benjaminjolivot@orange.fr", password: "benjoli")

remy = User.create!(email: "remywinehouse@free.fr", password: "remywine")

joseph = User.create!(email: "josephta@gmail.com", password: "josepht")

mathieu = User.create!(email: "cartosnet@gmail.com", password: "cartosn")

kevin = User.create!(email: "kevcha@sfr.fr", password: "kevcha")

maxime = User.create!(email: "maximepdm@gmail.com", password: "maximep")



puts "création des watch"

  Watch.create!(
    name: "sarkozy watch",
    brand:"rolex",
    price: 200,
    location: "Lyon, place bellcour",
    style: "cérémonie",
    gender: "man",
    color:"white",
    material:"acier",
    image:"https://images.rolex.com/catalogue/images/upright-bba-with-shadow/m126334-0014.png?impolicy=upright-majesty",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing eli",
    user_id: ben.id
  )

  Watch.create!(
    name: "Carla watch",
    brand:"rolex",
    price: 52,
    location: "Paris, arc de triomphe",
    style: "cérémonie",
    gender: "women",
    color:"blue",
    material:"diamonds",
    image:"https://images.rolex.com/catalogue/images/upright-bba-with-shadow/m86285-0001.png?impolicy=upright-majesty",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing eli",
    user_id: remy.id
  )

  Watch.create!(
    name: "Audemars watch",
    brand:"Audemars Piguet",
    price: 65,
    location: "Lyon, croix rousse",
    style: "design",
    gender: "man",
    color:"yellow",
    material:"gold",
    image:"https://b34959663f5a3997bd0d-2668915a1d3a077262c88fab6aa0aa02.ssl.cf3.rackcdn.com/17580804_1_640.jpg",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing eli",
    user_id: mathieu.id
  )

  Watch.create!(
    name: "Mourinho hublot",
    brand:"hublot",
    price: 150,
    location: "Lyon, la part dieu",
    style: "design",
    gender: "man",
    color:"black",
    material:"carbonne",
    image:"https://www.lepage.fr/media/catalog/product/cache/2/image/9df78eab33525d08d6e5fb8d27136e95/4/1/411ox1180rx_1.jpg",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing eli",
    user_id: kevin.id
  )

  Watch.create!(
    name: "aviator watch",
    brand:"breitling",
    price: 30,
    location: "Lyon, fourviere",
    style: "vintage",
    gender: "man",
    color:"brown",
    material:"leather",
    image:"https://upload.wikimedia.org/wikipedia/commons/7/71/Breitling_MG_2683.jpg",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing eli",
    user_id: joseph.id
  )

 Watch.create!(
   name: "Nadal watch",
   brand:"richard mille",
   price: 500,
   location: "Lyon, la part dieu",
   style: "sportswear",
   gender: "man",
   color:"yellow",
   material:"carbonne",
   image:"http://www.my-watchsite.fr/26098-large_default/rm-27-03-tourbillon-rafael-nadal.jpg",
   description:"Lorem ipsum dolor sit amet, consectetur adipiscing eli",
   user_id:maxime.id

  )

  Watch.create!(
    name: "Novak watch",
    brand:"seiko",
    price: 80,
    location: "Lyon",
    style: "city chic",
    gender: "man",
    color:"black",
    material:"acier",
    image:"http://static2.worldtempus.com/cache/article/s/e/seiko_djokovic_cover_crop_800x600.jpg",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing eli",
    user_id: ben.id
  )

 Watch.create!(
   name: "Megan watch",
   brand:"cartier",
   price: 1000,
   location: "Cannes",
   style: "cérémonie",
   gender: "women",
   color:"white",
   material:"acier",
   image:"https://www.cartier.fr/content/dam/rcq/car/59/25/81/592581.png",
   description:"Lorem ipsum dolor sit amet, consectetur adipiscing eli",
   user_id: mathieu.id
  )

 Watch.create!(
   name: "Poutine watch",
   brand:"blancpain",
   price: 500,
   location: "Lyon",
   style: "vintage",
   gender: "homme",
   color:"red",
   material:"leather",
   image:"https://lovetime.fr/wp-content/uploads/2014/02/blancpain-leman-flyback-chronograph-2885f-1130-53b-watch-470x400.jpg",
   description:"Lorem ipsum dolor sit amet, consectetur adipiscing eli",
   user_id: kevin.id
  )

  Watch.create!(
    name: "Remy le berlinois",
    brand:"Patek Philippe",
    price: 1000,
    location: "Lyon, la part dieu",
    style: "bling_bling",
    gender: "homme",
    color:"gold",
    material:"acier",
    image:"https://www.magmontres.fr/wp-content/uploads/2015/04/Patek-5175.jpg",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing eli",
    user_id: joseph.id
  )

puts "creation booking"

ids = Watch.pluck(:id)

Booking.create!(
  user_id:kevin.id,
  watch_id: ids.sample,
  )

Booking.create!(
  user_id:remy.id,
  watch_id:ids.sample,
  )

Booking.create!(
  user_id:mathieu.id,
  watch_id:ids.sample,
  )

Booking.create!(
  user_id:ben.id,
  watch_id:ids.sample,

  )


