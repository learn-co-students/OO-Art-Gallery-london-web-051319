require_relative '../config/environment.rb'

bob_ross = Artist.new("Bob Ross", 25)
camden_gallery = Gallery.new("Camden Gallery", "London")
bob_ross.create_painting("trees", 100, camden_gallery)


binding.pry

puts "Bob Ross rules."
