class Artist
  include Helper
  @@all = []
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    save
    @name = name
    @years_experience = years_experience
  end

  def self.all
    @@all
  end

  #Returns an array of all Painting objects by this artist
  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  #Returns an array of all Gallery objects by this artist
  def galleries
    paintings.map {|painting| painting.gallery}.uniq
  end

  #Returns an array of all city name strings where this artist's paintings are on sale
  def cities
    galleries.map{|gallery| gallery.city}.uniq
  end

  #Returns total integer sum of all experience that these artists have
  def self.total_experience
    self.all.reduce(0) {|sum, artist| sum + artist.years_experience}.to_i
  end

  #Returns an Artist object with most experience
  def self.most_prolific
    self.all.max_by {|artist| artist.years_experience}
  end

  #Creates and returns a new Painting object of this artist
  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
