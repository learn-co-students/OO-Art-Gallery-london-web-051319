class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def create_painting(title,price,gallery)
    Painting.new(title, price, gallery, self)
  end

  def paintingsFromArtist
    Painting.all.select{|painting| painting.artist == self}
  end

  def paintingsInGalleries
    paintingsFromArtist.map{|painting| painting.gallery}.uniq
  end

  def paintingsInGalleries
    paintingsFromArtist.map{|painting| painting.gallery.city}.uniq
  end

  def self.total_experience
    self.all.map { |artist| artist.years_experience}.reduce{ |sum, n| sum += n}
  end

  def self.most_prolific
    self.all.max_by { |artist| artist.paintingsFromArtist.count / artist.years_experience}
  end

end
