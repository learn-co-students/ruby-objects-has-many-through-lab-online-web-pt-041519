class Song 
  attr_accessor :artist, :genre, :name
  
  @@songs = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre
    @@songs << self 
  end 
  
  def self.all
    @@songs
  end 
end 