class Artist

  attr_reader :name, :songs


  @@all = []

  def initialize(name)
    @songs = []
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    Song.all.collect do |song|
      song.genre
    end
  end

end
