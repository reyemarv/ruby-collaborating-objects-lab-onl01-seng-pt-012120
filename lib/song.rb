class Song 
  
  attr_accessor :name, :artist  
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  
  def self.new_by_filename(name)
    song = self.new(name) 
    song.name = files.split(" - ")[1]
    song
  end 
    
end 