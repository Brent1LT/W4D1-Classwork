# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  
   piscaso = User.create!(name: "Picaso", email: "picaso@gmail.com", username: "TheGreatestOfthem")

   oridinary_bob = User.create!(name: "Bob", email: "iamjustbob@gmail.com", username: "dude")

   melted_clock = Artwork.create!(title: "Melted Clock", image_url: "dhfufghfurhfg", artist_id: 2)

   view1 = ArtworkShare.create!(artwork_id: 1, viewer_id: 1)
   view2 = ArtworkShare.create!(artwork_id: 1, viewer_id: 3)

end