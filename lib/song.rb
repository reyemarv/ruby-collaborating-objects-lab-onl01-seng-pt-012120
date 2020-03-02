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
    new_song = self.new(name) 
    new_song.name = name.split(" - ")[1]
    new_song.artist 
  end 
    
end 