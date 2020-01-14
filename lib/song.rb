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
  
  def initialize(name, artist=(artist = nil))
    @name = name
  end
  
  def save
    @@all << self
  end
  
  def artist= (artist)
    @artist = artist
    artist.add_song(self)
  end
  
  
  
end