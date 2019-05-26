class Genre

  attr_reader :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def artists
    Song.all.collect do |song|
      song.artist
    end
  end

end
