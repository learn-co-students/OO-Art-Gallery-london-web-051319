require_relative '../config/environment.rb'


ArtistOne = Artist.new("Felix", 8.0)
ArtistTwo = Artist.new("Jeff", 5.0)

GalleryOne = Gallery.new("GalOne", "Zurich")
GalleryTwo = Gallery.new("GalTwo", "London")

ArtistOne.create_painting("JAI", 283, GalleryOne)
ArtistTwo.create_painting("KLS", 891, GalleryTwo)

Painting.new("ABC",50, GalleryOne, ArtistTwo)
GalleryOne.contractPainting("DEF",70,ArtistOne)

binding.pry

puts "Bob Ross rules."
