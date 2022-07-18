# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# seed products if the db is new / has zero products

require 'uri'

if Product.count.zero?
  puts "Seeding products..."

  100.times do |i|
    new_product = Product.create(name: "Product #{i}", description: "Demo description for Product #{i}", price: rand(1..100))

    file = URI.open('https://picsum.photos/600/400')
    new_product.image.attach(io: file, filename: "product-#{i}.jpg", content_type: 'image/jpeg')
  end

  puts "Finished seeding products."
end