# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Book.create!([
    {title: "The life of a turtle", author: "greg", price: 90, published_date: Date.new(2026, 9, 14)},
    {title: "The mirror, the lion, and the audacity of the little dog", author: "greg", price: 90, published_date: Date.new(2026, 9, 14)},
    {title: "Origami for cats", author: "greg", price: 90, published_date: Date.new(2026, 9, 14)},
    {title: "The weight of a hundred kilograms", author: "greg", price: 90, published_date: Date.new(2026, 9, 14)},
    {title: "End of the world", author: "greg", price: 90, published_date: Date.new(2026, 9, 14)}
])
