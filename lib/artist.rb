# A genre has many songs and an artist has many songs. 
#An artist has many genres through its songs and a genre has many artists through its songs

class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all 
    @@all
  end
  
  def new_song(name, genre) 
    song = Song.new(name, self, genre)
    # genre = Genre.new(genre)
    # @songs << song 
  end
  
  # this searches thorugh all songs created in Song class array and finds all of the ones that are by this artist instance
  def songs 
    Song.all.select do |e|
      e.artist == self
    end
  end
  
  def genres
    songs.collect do |e| 
     e.genre 
   end
  end
  
end
