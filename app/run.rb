require_relative "models/artist.rb"
require_relative "models/gallery.rb"
require_relative "models/painting.rb"
require "pry"

# EXAMPLES

artist1 = Artist.new(name: "Picasso", years_experience: 80.0)
artist2 = Artist.new(name: "Monet", years_experience: 60.0)
artist3 = Artist.new(name: "Michaelangelo", years_experience: 75.0)
artist4 = Artist.new(name: "Da Vinci", years_experience: 68.0)

gallery1 = Gallery.new(name: "Louvre", city: "Paris")
gallery2 = Gallery.new(name: "Guggenheim", city: "NYC")
gallery3 = Gallery.new(name: "Tate", city: "London")
gallery4 = Gallery.new(name: "Del Prado", city: "Madrid")

painting1 = Painting.new(title: "Girl", price: 10.0, artist: artist1, gallery: gallery1)
painting2 = Painting.new(title: "Rotting Apples", price: 100.0, artist: artist2, gallery: gallery3)
painting3 = Painting.new(title: "Chicken in Wood", price: 5.0, artist: artist3, gallery: gallery1)
painting4 = Painting.new(title: "Dog", price: 13.0, artist: artist3, gallery: gallery4)
painting5 = Painting.new(title: "Moon and Stars", price: 15.0, artist: artist4, gallery: gallery2)
painting6 = Painting.new(title: "David", price: 20.0, artist: artist3, gallery: gallery4)



binding.pry
puts "exit"