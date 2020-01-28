require 'pry'
## create a module of class methods and Instance methods
## extend/include those methods in the artist and song classes
## leave the initialize and attr_accessor
## 
class Song
  include Findable
  include Paramable
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  
  
  attr_accessor :name, :artist 
  
  @@songs = []
  def initialize
    @@songs << self
  end

end
