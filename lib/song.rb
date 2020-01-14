class Song
  @@all = []
  
  attr_accessor :name, :artist
  
  def self.create(name)
  name = Song.new(name)
  name.save
  name
  end
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def initialize(name, artist = nil)
    @artist = artist
    @name = name
  end
  
  def save
    @@all << self
  end
  
  
  
  
end