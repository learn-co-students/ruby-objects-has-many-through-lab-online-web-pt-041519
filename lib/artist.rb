class Artist
  attr_accessor :name #reads & write name
  attr_reader :songs
  @@all = [] # knows about all artist instances
  def initialize(name)
    @name = name       # has a name
    @@all << self      #all artist instances push into @@all
    @songs = []
  end

  def self.all #class reader for all
    @@all
  end

  def new_song(name, genre) #given a name and genre, creates a new song associated with that artist
     @songs << Song.new(name, self, genre)  #date = genre object name is a string
     @songs.last
  end

  def genres # has many genres, through songs
      Genre.all
  end

end
