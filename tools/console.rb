require_relative '../config/environment.rb'


artist1 = Artist.new("Artist1", 2)
artist2 = Artist.new("Artist2", 5)
artist3 = Artist.new("Artist3", 23)

gallery1 = Gallery.new("Gallery1", "London")
gallery2 = Gallery.new("Gallery2", "Paris")
gallery3 = Gallery.new("Gallery3", "London")

painting1 = Painting.new("Painting1", 1340, gallery1, artist3)
painting2 = Painting.new("Painting2", 140, gallery2, artist1)
painting3 = Painting.new("Painting3", 340, gallery3, artist2)
painting4 = Painting.new("Painting4", 40, gallery3, artist2)



binding.pry

puts "Bob Ross rules."
