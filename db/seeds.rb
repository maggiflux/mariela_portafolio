# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#seed productos

Category.destroy_all 
Product.destroy_all


Category.create(
        name: "poster"
)

Category.create(
    name: "polerones"
)

Category.create(
    name: "libretas"
)

Category.create(
    name: "tazas"
)

Category.create(
    name: "poleras"
)


Category.create(
    name: "cuadros"
)




Product.create(
    product_name: "Poster Mérida",
    size: "25cm x 89cm",
    features: "papel couché 300gr",
    price: 30.000,
    category_id: 1,
    picture: "https://www.doite.cl/233639-thickbox_default/cool-active-m-s-red.jpg"
  )

  Product.create(
    product_name: "Poster Mérida",
    size: "25cm x 89cm",
    features: "papel couché 300gr",
    price: 30.000,
    category_id: 1,
    picture: "https://www.doite.cl/233639-thickbox_default/cool-active-m-s-red.jpg"
  )

  Product.create(
    product_name: "Taza Verde",
    size: "25cm x 89cm",
    features: "papel couché 300gr",
    price: 30.000,
    category_id: 3,
    picture: "https://www.doite.cl/233639-thickbox_default/cool-active-m-s-red.jpg"
  )

  Product.create(
    product_name: "Cuadro Mérida",
    size: "25cm x 89cm",
    features: "papel couché 300gr",
    price: 30.000,
    category_id: 3,
    picture: "https://www.doite.cl/233639-thickbox_default/cool-active-m-s-red.jpg"
  )





