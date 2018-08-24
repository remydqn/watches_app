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

ben = User.create(email: "benjaminjolivot@orange.fr", password: "benjoli", name: "benbaker", image:"https://avatars3.githubusercontent.com/u/40176179?s=460&v=4" )

remy = User.create(email: "remywinehouse@free.fr", password: "remywine", name:"remymy", image:"https://avatars3.githubusercontent.com/u/40638311?s=460&v=4")

joseph = User.create(email: "josephta@gmail.com", password: "josepht", name:"joseph", image: "https://avatars2.githubusercontent.com/u/5313828?s=460&v=4")

mathieu = User.create(email: "cartosnet@gmail.com", password: "cartosn", name:"mathc", image:"https://avatars3.githubusercontent.com/u/25009165?s=460&v=4")

kevin = User.create(email: "kevcha@sfr.fr", password: "kevcha", name:"kevlemoine", image:"https://avatars2.githubusercontent.com/u/472453?s=460&v=4")

maxime = User.create(email: "maximepdm@gmail.com", password: "maximep", name:"maxpdm", image:"https://avatars2.githubusercontent.com/u/32811068?s=460&v=4")





puts "1"
  sarkozy = Watch.create(
    name: "sarkozy watch",
    brand:"rolex",
    price: 200,
    address: "Lyon, place bellcour",
    style: "ceremony",
    gender: "man",
    color:"white",
    material:"acier",
    remote_image_url:"https://images.rolex.com/catalogue/images/upright-bba-with-shadow/m126334-0014.png?impolicy=upright-majesty",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing eli",
    user_id: ben.id
  )
  sleep(1)

puts "2"
  carla =  Watch.create(
    name: "Carla watch",
    brand:"rolex",
    price: 52,
    address: "Paris, arc de triomphe",
    style: "ceremony",
    gender: "woman",
    color:"blue",
    material:"diamonds",
    remote_image_url:"https://images.rolex.com/catalogue/images/upright-bba-with-shadow/m86285-0001.png?impolicy=upright-majesty",
    description:"rolex qui se caractérise par la splendeur de son cadran et les somptueux diamants",
    user_id: remy.id
  )
  sleep(1)

puts "3"
  audemars = Watch.create(
    name: "audemars watch",
    brand:"audemars piguet",
    price: 65,
    address: "Lyon, croix rousse",
    style: "design",
    gender: "man",
    color:"yellow",
    material:"gold",
    remote_image_url:"https://b34959663f5a3997bd0d-2668915a1d3a077262c88fab6aa0aa02.ssl.cf3.rackcdn.com/17580804_1_640.jpg",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing eli",
    user_id: mathieu.id
  )
  sleep(1)

puts "4"
 mourinho = Watch.create(
    name: "Mourinho hublot",
    brand:"hublot",
    price: 150,
    address: "Lyon, la part dieu",
    style: "design",
    gender: "man",
    color:"black",
    material:"carbonne",
    remote_image_url:"https://www.lepage.fr/media/catalog/product/cache/2/image/9df78eab33525d08d6e5fb8d27136e95/4/1/411ox1180rx_1.jpg",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing eli",
    user_id: kevin.id
  )
 sleep(1)

puts "5"
  aviator = Watch.create(
    name: "aviator watch",

    brand:"breitling",
    price: 30,
    address: "Lyon, fourviere",
    style: "vintage",
    gender: "man",
    color:"brown",
    material:"leather",
    remote_image_url:"https://upload.wikimedia.org/wikipedia/commons/7/71/Breitling_MG_2683.jpg",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing eli",
    user_id: joseph.id
  )
  sleep(1)

puts "6"
 nadal = Watch.create(
   name: "Nadal watch",
   brand:"richard mille",
   price: 500,
   address: "Lyon, la part dieu",
   style: "sportswear",
   gender: "man",
   color:"yellow",
   material:"carbonne",
   remote_image_url:"http://www.my-watchsite.fr/26098-large_default/rm-27-03-tourbillon-rafael-nadal.jpg",
   description:"Lorem ipsum dolor sit amet, consectetur adipiscing eli",
   user_id:maxime.id

  )
 sleep(1)

puts "7"
  novak = Watch.create(
    name: "Novak watch",
    brand:"seiko",
    price: 80,
    address: "Lyon",
    style: "city chic",
    gender: "man",
    color:"black",
    material:"acier",
    remote_image_url:"http://static2.worldtempus.com/cache/article/s/e/seiko_djokovic_cover_crop_800x600.jpg",
    description:"Cet incontournable de la marque Seiko associe l’élégance à l’innovation ",
    user_id: ben.id
  )
  sleep(1)

puts "8"
megane = Watch.create(
   name: "Megan watch",

   brand:"cartier",
   price: 1000,
   address: "Cannes",
   style: "ceremony",
   gender: "woman",
   color:"white",
   material:"acier",
   remote_image_url:"https://www.cartier.fr/content/dam/rcq/car/59/25/81/592581.png",
   description:"Lorem ipsum dolor sit amet, consectetur adipiscing eli",
   user_id: mathieu.id
  )
sleep(1)

puts "9"
 poutine = Watch.create(
   name: "Poutine watch",
   brand:"rolex",
   price: 500,
   address: "Lyon",
   style: "vintage",
   gender: "man",
   color:"black",
   material:"acier",
   image:"https://www.cresus.fr/images-produits/1/415x594/rolex-datejust-montre-automatique-acier-45161.jpg",
   description:"Lorem ipsum dolor sit amet, consectetur adipiscing eli",
   user_id: kevin.id
  )
 sleep(1)

puts "10"
  remywatch = Watch.create(
    name: "Remy le berlinois",
    brand:"patek philippe",
    price: 1000,
    address: "Lyon, la part dieu",
    style: "bling bling",
    gender: "man",
    color:"gold",
    material:"acier",
    remote_image_url:"https://www.magmontres.fr/wp-content/uploads/2015/04/Patek-5175.jpg",
    description:"Lorem ipsum dolor sit amet, consectetur adipiscing eli",
    user_id: joseph.id
  )
  sleep(1)
puts "creation booking"


Booking.create(
  user_id:kevin.id,
  watch_id: sarkozy.id,
  start_at: "20181126101008"
  )

p "1================="

Booking.create(
  user_id:remy.id,
  watch_id:carla.id,
  start_at: "20181126101008"
  )

p "2================="
Booking.create(
  user_id:mathieu.id,
  watch_id:poutine.id,
  start_at: "20181126101008"
  )

p "3================="
Booking.create(
  user_id:ben.id,
  watch_id:megane.id,
  start_at: "20181126101008"
  )

p "================"
p "---Seed - OK----"
p "================"

