class Artist
  attr_accessor :name
  
  @@all=[]

  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def initialize(name)
    @name = name
end
end