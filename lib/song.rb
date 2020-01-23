class Song

  include Paramable::InstanceMethods
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    super
  end

  def self.find_by_name(name)
    song = @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
