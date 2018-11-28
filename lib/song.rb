require 'pry'

class Song

  attr_reader :name, :genre
  attr_accessor :artist
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@all << self
  end

end # end of class
