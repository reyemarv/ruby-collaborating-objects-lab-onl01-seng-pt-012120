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
  
  def self.new_by_filename(file)
    new_song = file.split(" - ")[1] 
    new_artist = new_song[0]
    song = self.new(new_song)
    song
  end 
    
end 