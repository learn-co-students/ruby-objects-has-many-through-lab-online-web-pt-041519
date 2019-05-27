require 'pry'

class Genre

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # that iterates through all songs and finds the songs that belong to that genre.

  def songs
    Song.all { |track| song.genre == self}
  end

  def artists
    Song.all.collect do |song|
      if song.genre == self
        song.artist
        end
      end
  end

end
