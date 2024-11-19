# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# clean data base
puts "clean data base"
Booking.destroy_all
Art.destroy_all
User.destroy_all

# user
puts "create users"
toto = User.create!(email: "toto@toto.com", password: "password")
manu = User.create!(email: "manu@manu.com", password: "password")

# artists
picasso = Artist.new(name: "Pablo Picasso")
pokemon = Artist.new(name: "Pokemon")
rembrandt = Artist.new(name: "Rembrandt")
monet = Artist.new(name: "Monet")
jp_dupont = Artist.new(name: "Jean-Paul Dupont")

  # art
puts "create arts"
  # statue
art_statue = Art.create!(name: "statue fleur", description: "statue argile", price: 70, year: 1876, category: "statue", artist: rembrandt, owner: toto)
art_pikachu = Art.create!(name: "pikachu statue", description: "pikachu argile", price: 73, year: 2016, category: "statue", artist: pokemon, owner: manu)
art_salameche = Art.create!(name: "salameche statue", description: "salameche argile", price: 71, year: 2016, category: "statue", artist: pokemon, owner: manu)
art_ronflex = Art.create!(name: "ronflex statue", description: "ronflex argile", price: 72, year: 2016, category: "statue", artist: pokemon, owner: manu)
# peintures
art_fleur = Art.create!(name: "peinture fleur", description: "fleurs toile gouache 40X30", price: 50, year: 1876, category: "painting", artist: picasso, owner: toto)
art_paysage = Art.create!(name: "peinture paysage", description: "paysage toile huile 40X30", price: 100, year: 1876, category: "painting", artist: rembrandt, owner: toto)
art_maison = Art.create!(name: "peinture maison", description: "maisons toile gouache 40X30", price: 55, year: "1913", category: "painting", artist: monet, owner: manu)
  # ceramique
art_vase = Art.create!(name: "vase ceramique", description: "vase ceramique peint", price: 75,  year: 1876, category: "ceramic", artist: rembrandt, owner: toto)
  # photo
art_portrait = Art.create!(name: "autoportrait", description: "portrait photo noir&blanc 40X30", price: 101, year: 1876, category: "photography", artist: picasso, owner: toto)
  # tapisserie
art_tapis1 = Art.create!(name: "tapisserie rêve bleu", description: "tapisserie moderne en pur coton bio 100x50 encadrée", price: 101, year: 2023, category: "tapestry", artist: jp_dupont, owner: toto)

# booking
puts "create bookings"
Booking.create!(art: art_fleur, user: manu, start_date: Date.today, end_date: Date.today + 2, status: "to be confirmed" )
Booking.create!(art: art_paysage, user: manu, start_date: Date.today, end_date: Date.today + 2, status: "confirmed" )
Booking.create!(art: art_ronflex, user: toto, start_date: Date.today, end_date: Date.today + 2, status: "confirmed" )
