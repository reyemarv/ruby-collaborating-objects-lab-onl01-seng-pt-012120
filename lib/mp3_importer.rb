class MP3Importer
  
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
  end 
  
  def files
    Dir.entries(self.path).select{|file| file.end_with?(".mp3")}
  end 
  
  def import 
    self.files.each{|file| song.name(file)}
  end 
end 