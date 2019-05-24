require 'pry'

class Genre
  attr_accessor :name, :songs

  @@all_genres = []
  def self.all
    @@all_genres
  end

  def initialize(name)
    @name, @songs = name, []
    self.class.all << self
  end

  def artists
    self.songs.map { |song| song.artist }.uniq
  end
end
