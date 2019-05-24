class Genre
  attr_reader :name

  @@all = []

  # Read @@all
  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  # Return array of all songs that belong to artist
  def songs
    Song.all.select { |song| song.genre.name == @name }
  end

  # Return array of all artists that own songs
  def artists
    songs.collect { |song| song.artist }
  end

end