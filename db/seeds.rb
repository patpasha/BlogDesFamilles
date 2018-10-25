# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do |index|
	users = User.create!(lastname: Faker::Name.last_name, firstname: Faker::Name.first_name, email: "email#{index}@gmail.com")

end

# on crée 5 catégories 
5.times do |index|

	categories = Category.create!(name: Faker::Dessert.variety)

end


# on crée 10 articles
10.times do |index|

	articles = Article.create!(title: Faker::Dessert.topping, content: Faker::ChuckNorris.fact, user_id: "#{rand(1..10)}", category_id: "#{rand(1..5)}")

end

# on crée 15 commentaires
15.times do |index|

	comments = Comment.create!(content: Faker::ChuckNorris.fact, user_id: "#{rand(1..10)}", article_id: "#{rand(1..10)}")

end


# on balance 15 likes random (par contre, on a oublié de mettre les articles associés mais trop long de tout refaire : FUCK IT)
15.times do |index|

	likes = Like.create!(user_id: "#{rand(1..10)}")

end