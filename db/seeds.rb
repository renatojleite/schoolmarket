categories = ["Primeira Série", "Segunda Série", "Terceira Série", "Quarta Série", "Quinta Série", "Sexta Série", "Camiseta", "Shorts", "Moletom"]
Category.destroy_all
categories.each do |categorie|
  Category.create(name: categorie)
end

User.destroy_all
puts "Creating Users...."
User.create!(email: "contato@banana.com", password: "123456" )
User.create!(email: "contato2@banana.com", password: "123456" )
User.create!(email: "contato3@banana.com", password: "123456" )
User.create!(email: "contato4@banana.com", password: "123456" )

puts "You have #{User.count} users"
​
​Offer.destroy_all
puts "Create offers"
Offer.create(name: "Iniciando com ciências", description: "Livro sobre zoologia", price: "11", category: Category.all.sample, user: User.first )
Offer.create(name: "Shorts", description: "description2", price: "12", category:Category.all.sample, user: User.first )
Offer.create(name: "Mundo da Matemática", description: "description3", price: "13", category:Category.all.sample, user: User.first )
