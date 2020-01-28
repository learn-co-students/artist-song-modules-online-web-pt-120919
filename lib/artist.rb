require 'pry'
## create a module of class methods and Instance methods
## extend/include those methods in the artist and song classes
## leave the initialize and attr_accessor
## 
class Artist
  include Paramable
  include Findable
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods

  attr_accessor :name
  attr_reader :songs

  def initialize
   super 
    @songs = []
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  
end
