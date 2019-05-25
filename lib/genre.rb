class Genre
  attr_reader :name, :genres
  @@all = []

  def initialize(name)
    @name =  name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |name|
    name.genre == self
    end
  end

  def artists
    Artist.all.select do |name|
      name.genre == self
    end
  end
end
