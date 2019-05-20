class Artist

  attr_reader :name, :years_experience

  @@artists = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@artists << self
  end

  def self.all
    @@artists
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery}
  end

  def cities
    galleries.map {|galleries| galleries.city}
  end

  def self.total_experience
    @@artists.reduce(0){|total, artists| total + artists.years_experience}
  end

  def self.most_prolific
    @@artists.max_by{|artist| artist.years_experience/artist.paintings.size}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end

end
