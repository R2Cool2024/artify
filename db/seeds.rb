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
Artist.destroy_all
User.destroy_all


# user
file = URI.parse("https://res.cloudinary.com/dnm2n1iid/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1732205716/nora_profile_lykcsp.jpg").open
toto = User.new(email: "toto@toto.com", name: "toto", password: "pass1234toto")
toto.photo.attach(io: file, filename: "nora.jpg", content_type: "image/jpg")
toto.save

file = URI.parse("https://res.cloudinary.com/dnm2n1iid/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1732205347/camille_q5cbjy.jpg").open
manu = User.new(email: "manu@manu.com", name: "manu", password: "pass1234manu")
manu.photo.attach(io: file, filename: "manue.jpg", content_type: "image/jpg")
manu.save

# artists
puts "create artists"

picasso = Artist.create!(name: "Pablo Picasso")
pokemon = Artist.create!(name: "Pokemon")
rembrandt = Artist.create!(name: "Rembrandt")
monet = Artist.create!(name: "Monet")
jp_dupont = Artist.create!(name: "Jean-Paul Dupont")
mathew_momoney = Artist.create!(name: "Mathew MoMoney")

# arts
puts "create arts"
# peintures

file = URI.parse("https://res.cloudinary.com/dnm2n1iid/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1732191304/pexels_steve_peinture_2_-_Copie_h2q6fs.jpg").open
art_fleur = Art.new(name: "peinture fleur", description: "fleurs toile gouache 40X30", price: 50, year: 1876, category: "painting", artist: picasso, owner: toto)
art_fleur.photo.attach(io: file, filename: "art_fleur.jpg", content_type: "image/jpg")
art_fleur.save

file = URI.parse("https://res.cloudinary.com/dnm2n1iid/image/upload/v1732190817/aaron_burden_photo_ndk6l3.jpg").open
art_paysage = Art.new(name: "peinture paysage", description: "paysage toile huile 40X30", price: 100, year: 1876, category: "painting", artist: rembrandt, owner: toto)
art_paysage.photo.attach(io: file, filename: "art_paysage.jpg", content_type: "image/jpg")
art_paysage.save

file = URI.parse("https://res.cloudinary.com/dnm2n1iid/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1732191303/pexels_steve_peinture_yfzwmc.jpg").open
art_maison = Art.new(name: "peinture maison", description: "maisons toile gouache 40X30", price: 55, year: "1913", category: "painting", artist: monet, owner: manu)
art_maison.photo.attach(io: file, filename: "art_maison.jpg", content_type: "image/jpg")
art_maison.save
# ceramique

file = URI.parse("https://res.cloudinary.com/dnm2n1iid/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1732201348/ceramique_raku_f968lz.jpg").open
art_vase = Art.new(name: "vase ceramique", description: "vase ceramique peint", price: 75,  year: 1876, category: "ceramic", artist: rembrandt, owner: toto)
art_vase.photo.attach(io: file, filename: "art_vase.jpg", content_type: "image/jpg")
art_vase.save
# photo

file = URI.parse("https://res.cloudinary.com/dnm2n1iid/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1732200820/nature_humaine_srdwcc.png").open
art_portrait = Art.new(name: "Nature humaine", description: "Autoportrait contemporain groupe partial developpeurs fous 30X21", price: 400, year: 2024, category: "photography", artist: mathew_momoney, owner: manu)
art_portrait.photo.attach(io: file, filename: "art_portrait.jpg", content_type: "image/jpg")
art_portrait.save
# tapisserie

file = URI.parse("https://res.cloudinary.com/dnm2n1iid/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1732190818/oladimeji_odunsi_photo_n9z0qf.jpg").open
art_tapis = Art.new(name: "Rêve bleu", description: "tapisserie moderne en pur coton bio 100x50 encadrée", price: 101, year: 2023, category: "tapestry", artist: jp_dupont, owner: toto)
art_tapis.photo.attach(io: file, filename: "art_tapis.jpg", content_type: "image/jpg")
art_tapis.save

# statue
file = URI.parse("https://res.cloudinary.com/dnm2n1iid/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1732191302/statue_2_olycrk.jpg").open
art_statue = Art.new(name: "statue angels", description: "statue argile", price: 700, year: 1876, category: "statue", artist: rembrandt, owner: toto)
art_statue.photo.attach(io: file, filename: "art_statue.jpg", content_type: "image/jpg")
art_statue.save

file = URI.parse("https://res.cloudinary.com/dnm2n1iid/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1732200819/statue_picachu_qmmdal.jpg").open
art_pikachu = Art.new(name: "pikachu statue", description: "pikachu argile", price: 73, year: 2016, category: "statue", artist: pokemon, owner: manu)
art_pikachu.photo.attach(io: file, filename: "art_pikachu.jpg", content_type: "image/jpg")
art_pikachu.save

file = URI.parse("https://res.cloudinary.com/dnm2n1iid/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1732200818/statue_Salamence_ztwwpu.jpg").open
art_salameche = Art.new(name: "salameche statue", description: "salameche argile", price: 71, year: 2016, category: "statue", artist: pokemon, owner: manu)
art_salameche.photo.attach(io: file, filename: "art_salameche.jpg", content_type: "image/jpg")
art_salameche.save

file = URI.parse("https://res.cloudinary.com/dnm2n1iid/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1732201100/ronflex_c01wlm.jpg").open
art_ronflex = Art.new(name: "ronflex statue", description: "ronflex argile", price: 72, year: 2016, category: "statue", artist: pokemon, owner: manu)
art_ronflex.photo.attach(io: file, filename: "art_ronflex.jpg", content_type: "image/jpg")
art_ronflex.save

# booking
puts "create bookings"
Booking.create!(art: art_statue, user: manu, start_date: Date.today, end_date: Date.today + 2, status: "pending" )
Booking.create!(art: art_portrait, user: toto, start_date: Date.today, end_date: Date.today + 2, status: "confirmed" )
Booking.create!(art: art_ronflex, user: toto, start_date: Date.today, end_date: Date.today + 2, status: "confirmed" )
