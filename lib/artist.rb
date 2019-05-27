require 'pry'

class Artist

  @@all = []

  attr_accessor :name

  attr_reader :songs

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  # that takes in an argument of a name and genre creates a new song.
  # That song should know that it belongs to the artist.

  def new_song(name, genre)
  @songs << Song.new(name,self,genre)
  @songs.last
  end

  def genres
    Genre.all
  end

end
