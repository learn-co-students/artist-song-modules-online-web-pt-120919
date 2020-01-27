module Memorable
    module ClassMethods
    
        def reset_all
        self.all.clear #can clear all instances of an artist
        end

        def count
        self.all.count #keeps count of all artist
        end
    end
end

