class Gallery

  attr_reader :name, :city 

#  CLASS ******************

@@all = []

def self.all
   @@all
end

def initialize(name: , city: )
   @name = name
   @city = city
   @@all << self
end

# def self.most_expensive_painting 
#    a = Painting.all.map.with_index{|inst|inst.price}.max_by{|x| x}
#    # b = a.max_by{|inst| inst} # gives max value in array a
#    Painting.all.select{|inst|inst.price == a}
# end

#  INSTANCE ******************

def paintings
Painting.all.select{|inst| inst.gallery == self}
end

def artists
   paintings.map{|inst| inst.artist}
end

def artist_names
   artists.map{|inst| inst.name}
end

def most_expensive_painting
   prices = paintings.map{|inst| inst.price}.max_by{|x| x}
   paintings.select{|inst| inst.price == prices}
end

end
