require 'pry'

class Artist
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end

  

  def self.all
    @@artists
  end
=begin
  def self.reset_all
    self.all.clear #can clear all instances of an artist
  end

  def self.count
    self.all.count #keeps count of all artist
  end
=end
  def add_song(song)
    @songs << song #adding songs to the array of songs
    song.artist = self # connecting songs to an artist
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) } #adding songs 
  end

  #def to_param
    #name.downcase.gsub(' ', '-')
  #end
end
