class Genre
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Read @@all
  def self.all
    @@all
  end

  # Return array of all songs that belong to artist
  def songs
    Song.all.select { |song| song.genre == self }
  end

  # Return array of all artists that own songs
  def artists
    songs.collect { |song| song.artist }
  end

end