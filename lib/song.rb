require "pry"


class Song

  @@all = []

  attr_accessor :name, :artist
 
  def initialize(name)
    @name = name
    @@all << self
  end
  
  
  def self.all
    @@all
  end
  
  
  def artist_name
    artist.name if artist #!= nil - not needed, artist is a truthy val
  end


end