class Artist
  attr_reader :name, :songs, :genres
  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
      song = Song.new(name, self, genre)
  end

  def self.all
   @@all
  end

  def songs
    Song.all.select do |name|
    name.artist == self
    end
  end

  def genres
    songs.genre
  end
end
