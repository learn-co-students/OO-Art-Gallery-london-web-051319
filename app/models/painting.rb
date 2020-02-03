class Painting

  include Helper

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    save
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
  end

  def self.all
    @@all
  end

  def self.total_price
    all.reduce(0) {|sum, painting| sum + painting.price}
  end

end
