require_relative '../config/environment.rb'


artist1 = Artist.new(name: "bobby", years_experience: 6)
artist2 = Artist.new(name: "jim", years_experience: 4)
artist3 = Artist.new(name: "carrie", years_experience: 34)

gallery1 = Gallery.new(name: "Heisenberg", city: "Stokholm")
gallery2 = Gallery.new(name: "Big gate", city: "Manchester")
gallery3 = Gallery.new(name: "Chippy", city: "London")

painting1 = Painting.new(title: "The Queen portrait", price: 5600, artist: artist1, gallery: gallery1)
painting2 = Painting.new(title: "Doggo", price: 600, artist: artist1, gallery: gallery2)
painting3 = Painting.new(title: "Games", price: 500, artist: artist2, gallery: gallery3)
painting4 = Painting.new(title: "the face", price: 5000, artist: artist1, gallery: gallery1)
painting5 = Painting.new(title: "cracking", price: 300, artist: artist2, gallery: gallery2)
painting6 = Painting.new(title: "yes pics", price: 3000, artist: artist3, gallery: gallery1)



binding.pry

puts "Bob Ross rules."
