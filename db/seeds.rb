require_relative '../models/shirt'

Shirt.create({
  quantity: 200,
  image: "https://dafb3cv85j5xj.cloudfront.net/blog/wp-content/uploads/2015/04/fc_M_mario_v2.jpg",
  name: "Awesome shirt",
  price: 14.99,
  brand: "KualaTee",
  color: "blue"
})

Shirt.create({
  quantity: 200,
  image: "https://dafb3cv85j5xj.cloudfront.net/blog/wp-content/uploads/2015/04/fc_M_cookie_v2.jpg",
  name: "TrexTee",
  price: 14.99,
  brand: "KualaTee",
  color: "red"
})

Shirt.create({
  quantity: 200,
  image: "https://dafb3cv85j5xj.cloudfront.net/blog/wp-content/uploads/2015/04/fc_W_batman_v2.jpg",
  name: "clothesTee",
  price: 14.99,
  brand: "KualaTee",
  color: "yellow"
})
