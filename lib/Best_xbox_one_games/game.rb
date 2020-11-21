class Game
    attr_accessor :name, :info
    
    @@all =[]
    
    def initialize(name = nil, info = nil)
      @name =name
      @info = info
      @@all << self
    end
    
    def self.all 
      @@all
    end
  
  end 