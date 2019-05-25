class Artist
  attr_reader :name
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
    Song.all.select do |songname|
    songname.artist == self
    end
  end

  def genres
    #binding.pry
    songs.collect do|artist|
      artist.genre
    end
  end
end
