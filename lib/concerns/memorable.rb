module Memorable
  
  module InstanceMethods
    def initialize
    self.class.all << self
    end
  end
  
  module ClassMethods
    def self.all
    self.all
    end

    def self.reset_all
    self.all.clear
    end

    def self.count
    self.all.count
    end
    
  end
  

end