class Genre

  attr_accessor :name
  @@all = []
  
  def self.create(name)
    name = Genre.new(name)
    name.save
    name
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def save
    @@all << self
  end
  
  def songs
    @songs
  end
   def add_song(song)
    if song.genre == nil
      song.genre= self
      @songs << song
    end
  end
  
end