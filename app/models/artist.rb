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

 def paintings
   Painting.all.select do |painting|
     painting.artist == self
   end
 end

 def galleries
   paintings.map do |painting|
     painting.gallery
   end.uniq
 end

 def cities
   galleries.map do |gallery|
     gallery.city
   end.uniq
 end

 def self.total_experience
   all.map do |artist|
     artist.years_experience
   end.reduce(:+)
 end

 def self.most_prolific
   all.max_by do |artist|
     artist.paintings.length / artist.years_experience.to_f
  end
end

def create_painting(title, price, gallery)
  Painting.new(title, price, gallery, self)
end



end
