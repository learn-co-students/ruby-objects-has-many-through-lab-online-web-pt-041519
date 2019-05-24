class Artist
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

  # Create new song from name, genre, and this artist
  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  # Return array of all songs that belong to artist
  def songs
    Song.all.select { |song| song.artist == self }.reverse
  end

  # Return array of all artist's song genres
  def genres
    songs.collect { |song| song.genre }
  end

end
