class Painting

  attr_reader :title, :price, :artist, :gallery

  #  CLASS ******************

  @@all = []
  
  def self.all
   @@all
end

def initialize(title: , price: , artist: , gallery: )
   @title = title
   @price = price
   @artist = artist
   @gallery = gallery
   @@all << self
end

def self.total_price # in millions
   Painting.all.map{|inst| inst.price}.inject(0){|sum,x| sum+x}.to_i
end

#  INSTANCE ******************


end
