class Gallery
  include Helper
  @@all = []

  attr_reader :name, :city

  def initialize(name, city)
    save
    @name = name
    @city = city
  end

  def self.all
    @@all
  end

  #Returns an array of all the Painting objects on sale in this gallery
  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  #Returns an array of all the Artist objects who have paintings on sale in this gallery
  def artists
    paintings.map {|painting| painting.artist}.uniq
  end

  #Returns an array of all artist names who have paintings on sale in this gallery
  def artist_names
    artists.map{|artist| artist.name}
  end

  #Returns an object Painting that has the highest price at this gallery
  def most_expensive_painting
    paintings.max_by {|painting| painting.price}
  end

end
