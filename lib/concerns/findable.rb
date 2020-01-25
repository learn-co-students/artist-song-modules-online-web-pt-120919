def Findable
  def find_by_name(name)
    all.detect do |n|
      n == name 
    end
  end 
end 