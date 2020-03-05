# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.connection.execute("DELETE FROM posts")

puts 'Seeding Posts'
posts = Post.create([{ title: 'A Post', description: 'Today A Post' }, { title: "B Post", description: 'Tomorrow B Post' }])
puts "There are #{Post.count} records in the posts table."

puts "Databases #{Rails.env} tables are now successfully seeded!"