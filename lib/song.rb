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
    new_song = name.split(" - ") 
    song = self.new(new_song[1])
    song.artist = new_song[0]
    song
  end 
    
end 