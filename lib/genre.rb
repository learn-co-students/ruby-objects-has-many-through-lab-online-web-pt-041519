require "pry"

class Genre
  attr_accessor :name
  @@all = []

  def initialize(name) #
    @name = name
    @@all << self  #all Genre instances push into @@all
  end

  def self.all #class reader for all
    @@all
  end

  def artists # a artists, through songs
    #songs.map(&:artist)
    songs.collect{ |song| song.artist}
  end

  def songs
     Song.all.select{ |song| song.genre == self } #takes a block and creates a new array of the items the block evaluates to true only.
     #binding.pry
  end

end
