# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

ned = User.create!(username: "NedJohnson")
dave = User.create!(username: "DaveJohnson")
timmy = User.create!(username: "TimmyJohnson")
jane = User.create!(username: "JaneJohnson")
jana = User.create!(username: "JanaJohnson")
sally = User.create!(username: "SallyJohnson")
billy = User.create!(username: "BillyJohnson")

Artwork.destroy_all

house = Artwork.create!(title: "The Johnson House", image_url: '/house', artist_id: billy.id )
school = Artwork.create!(title: "My School", image_url: '/school', artist_id: dave.id )
untitled1 = Artwork.create!(title: "Untitled", image_url: '/untitled1', artist_id: ned.id )
paper = Artwork.create!(title: "Paper", image_url: '/paper', artist_id: sally.id )
untitled2 = Artwork.create!(title: "Untitled", image_url: '/untitled2', artist_id: timmy.id )
bigger_house = Artwork.create!(title: "My house is bigger", image_url: '/bigger_house', artist_id: jana.id )
johnson_family_portrait = Artwork.create!(title: "The Johnsons", image_url: '/johnsons', artist_id: jane.id )

ArtworkShare.destroy_all

share1 = ArtworkShare.create!(artwork_id: house.id, viewer_id: jana.id)
share2 = ArtworkShare.create!(artwork_id: house.id, viewer_id: jane.id)
share3 = ArtworkShare.create!(artwork_id: paper.id, viewer_id: ned.id)
share4 = ArtworkShare.create!(artwork_id: untitled1.id, viewer_id: billy.id)
share5 = ArtworkShare.create!(artwork_id: untitled2.id, viewer_id: timmy.id)
share6 = ArtworkShare.create!(artwork_id: bigger_house.id, viewer_id: sally.id)
share7 = ArtworkShare.create!(artwork_id: johnson_family_portrait.id, viewer_id: dave.id)
share8 = ArtworkShare.create!(artwork_id: paper.id, viewer_id: dave.id)
share9 = ArtworkShare.create!(artwork_id: untitled2.id, viewer_id: sally.id)
share10 = ArtworkShare.create!(artwork_id: school.id, viewer_id: ned.id)