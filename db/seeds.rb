# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create(username: "admin", password: "F1c03r4d!")
User.create(username: "kacz", password: "F1c03r4d!")
User.create(username: "johnny", password: "F1c03r4d!")
User.create(username: "ego2gogo", password: "Fvq05855!")
Message.create(body: "Hello, World!", user: User.first)
Message.create(body: "Goodbye, World!", user: User.last)

