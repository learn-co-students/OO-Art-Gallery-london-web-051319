class Gallery

  attr_reader :name, :city

  @@galleries = []

  def initialize(name, city)
    @name = name
    @city = city
    @@galleries << self
  end

  def self.all
    @@galleries
  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    paintings.map{|paintings| paintings.artist}
  end

  def artist_names
    artists.map {|artist| artist.name}
  end

  def most_expensive_painting
    paintings.max_by {|painting| painting.price}
  end

end
