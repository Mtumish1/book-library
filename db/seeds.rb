# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# db/seeds.rb

# Create Users
User.create!(
  email: "user1@example.com",
  password: "password",
  password_confirmation: "password"
)

User.create!(
  email: "user2@example.com",
  password: "password",
  password_confirmation: "password"
)

# Create Books
books = [
  { title: "The Pragmatic Programmer", author: "Andrew Hunt", isbn: "978-0135957059", availability: true },
  { title: "Clean Code", author: "Robert C. Martin", isbn: "978-0132350884", availability: true },
  { title: "Design Patterns", author: "Erich Gamma", isbn: "978-0201633610", availability: true },
  { title: "Eloquent Ruby", author: "Russ Olsen", isbn: "978-0321584106", availability: true },
  { title: "You Don't Know JS", author: "Kyle Simpson", isbn: "978-1491904244", availability: true }
]

books.each do |book|
  Book.create!(book)
end

puts "✅ Seed data successfully added!"
