# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'cleaning up database'
Article.destroy_all
puts 'database is clean'

puts 'creating articles'
10.times do
  article = Article.create(
    title: Faker::Book.title,
    content: Faker::Twitter.status
  )
  puts "article #{article.title} is created"
end

puts 'articles created'
