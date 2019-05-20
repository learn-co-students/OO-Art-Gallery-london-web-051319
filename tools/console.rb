require_relative '../config/environment.rb'

sam = Artist.new("Sam", 100)
catherine = Artist.new("Catherine", 80)
alex = Artist.new("Alex", 135)
moorgate = Gallery.new("Moorgate", "London")
wimbledon = Gallery.new("Wimbledon", "San Francisco")
sam.create_painting("the moors", 25, moorgate)
sam.create_painting("where the wind blows", 35, wimbledon)
alex.create_painting("discussion", 30, moorgate)
catherine.create_painting("your ability is nigh", 35, moorgate)


binding.pry

puts "Bob Ross rules."
