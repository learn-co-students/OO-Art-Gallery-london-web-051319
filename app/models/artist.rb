class Artist

  attr_reader :name, :years_experience

#  CLASS ******************

@@all = []

def self.all
   @@all
end

def initialize(name:, years_experience:)
   @name = name
   @years_experience = years_experience
   @@all << self
end

def self.total_experience
   Artist.all.map{|inst| inst.years_experience}.inject(0){|sum,x| sum+x}.to_i
end

def self.most_prolific
   a = Painting.all.map{|inst| inst.artist} # maps all instances of paintings by artists
   b = a.uniq.map{|inst| a.count(inst)/inst.years_experience} # removes duplicates and returns an array of paintings/year of exp.
   c = b.max_by{|x|x} # finds the greatest value in the array
   d = b.find_index(c) # determines the index of that value
   a.uniq[d] #compares to the initial array with duplicates removed to provide the artist object
end

#  INSTANCE ******************

def paintings
   Painting.all.select{|inst| inst.artist == self}
end

def galleries
   paintings.map{|inst| inst.gallery}
end

def cities
   galleries.map{|inst| inst.city}.uniq
end

def create_painting(title, price, gallery)
   gal = Gallery.all.select{|inst| inst.name == gallery}[0]
   Painting.new(title: title, price: price, artist: self, gallery: gal)
end

end
