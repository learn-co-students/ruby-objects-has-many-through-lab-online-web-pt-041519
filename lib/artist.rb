require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all_artists = []
  def self.all
    @@all_artists
  end

  def initialize(name)
    @name, @songs = name, []
    self.class.all << self
  end

  def genres
    self.songs.map { |song| song.genre }.uniq
  end

  def new_song(song_name, genre)
    Song.new(song_name, self, genre)
  end
end
