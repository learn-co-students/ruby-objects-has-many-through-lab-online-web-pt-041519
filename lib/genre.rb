class Genre 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  #to find all songs in this genre instance (ex, rap) we iterate through 
  #all songs and select thee onees that are this instance (rap)
  def songs 
    Song.all.select do |e|
      e.genre == self
    end
  end
  
  #to find all artisttin this genre we collect all the artists 
  # (from the array created by .songs) and return an array of those artists
  def artists
    songs.collect do |e| 
     e.artist 
   end
  end
  
end