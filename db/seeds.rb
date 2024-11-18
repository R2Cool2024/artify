# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# user
# toto = User.create!(email: "toto@toto.com", encrypted_password: "toto")
# manu = User.create!(email: "manu@manu.com", encrypted_password: "manu")

# art

# art_fleur = Art.create!(name: "peinture fleur", description: "fleurs toile gouache 40X30", price: 50, owner: toto)
# art_statue = Art.create!(name: "statue fleur", description: "statue argile", price: 70, owner: toto)
# art_paysage = Art.create!(name: "peinture paysage", description: "paysage toile huile 40X30", price: 100, owner: toto)

# # booking

# Booking.create!(art: art_fleur, user: manu, start_date: Date.today, end_date: Date.today + 2, status: "in progress" )
# Booking.create!(art: art_paysage, user: manu, start_date: Date.today, end_date: Date.today + 2, status: "confirmed" )
