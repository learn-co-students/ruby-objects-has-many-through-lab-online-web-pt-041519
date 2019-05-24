require 'pry'

class Song
  attr_accessor :name, :genre, :artist

  @@all_songs = []
  def self.all
    @@all_songs
  end

  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
    artist.songs << self
    genre.songs << self
    self.class.all << self
  end
end
