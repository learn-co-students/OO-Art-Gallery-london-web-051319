require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

louvre = Gallery.new("Louvre", "Paris")
tate_mod = Gallery.new("Tate Modern", "London")
cat = Artist.new("Cat", 13)
sam = Artist.new("Sam", 2)
alex = Artist.new("Alex", 7)

alex.create_painting("Sunshine", 150, tate_mod)
cat.create_painting("Blank Spaces", 400, tate_mod)
sam.create_painting("How did I get here", 300, tate_mod)
cat.create_painting("Dark Spaces", 550, louvre)

binding.pry