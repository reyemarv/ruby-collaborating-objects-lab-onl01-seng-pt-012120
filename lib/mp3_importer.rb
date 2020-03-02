class MP3Importer
  
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
  end 
  
  def files
    Dir.entries(self.path).select{|file| file.each_with
end 