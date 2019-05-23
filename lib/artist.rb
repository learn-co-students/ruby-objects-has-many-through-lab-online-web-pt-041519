require "pry"

class Artist
   attr_accessor :name, :genre, :song_name
   @@all = []

   def initialize(name)
      self.name = name
      @@all << self
   end

   def new_song(name, genre)
      song = Song.new(name, self, genre)
   end

   def songs
      Song.all.select {|song| song.artist == self}
   end

   def genres
      self.songs.collect {|song| song.genre}
   end

   def self.all
      @@all
   end


end