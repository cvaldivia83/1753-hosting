# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"

article  = Article.new(
  title: 'Greatest Article Ever', 
  body: "lorem ipsum adflkjaldkf asdfdd skdfjdkfj whiskas sachet"
)

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")


article.photo.attach(io: file, filename: "nes.png", content_type: "image/png")

article.save