# puts "Destroy offers"
# Offer.destroy_all unless Rails.env.production?
# ​
# puts "Destroy users"
# User.destroy_all unless Rails.env.production?
# ​
puts "Create users"
User.create(email: "contato@banana.com", password: "123456" )
User.create(email: "contato2@banana.com", password: "123456" )
User.create(email: "contato3@banana.com", password: "123456" )
User.create(email: "contato4@banana.com", password: "123456" )
​
​
puts "Create offers"
Offer.create(name: "product1", description: "description1", price: "11" )
Offer.create(name: "product2", description: "description2", price: "12" )
Offer.create(name: "product3", description: "description3", price: "13" )
