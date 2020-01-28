require 'pry'
## create a module of class methods and Instance methods
## extend/include those methods in the artist and song classes
## leave the initialize and attr_accessor
## 
class Artist
  include Paramable::InstanceMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  @@all = []
  attr_accessor :name
  attr_reader :songs

  def initialize
   super 
    @songs = []
  end
  
  def self.all
    @@all
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
  
  def add_song(song)
    @songs << song 
  end
  

  
end
