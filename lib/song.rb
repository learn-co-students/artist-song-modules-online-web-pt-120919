require 'pry'
## create a module of class methods and Instance methods
## extend/include those methods in the artist and song classes
## leave the initialize and attr_accessor
## 
class Song
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  
  attr_accessor :name, :artist 
  
  @@all = []
  
  
  def self.all
    @@all
  end

end
