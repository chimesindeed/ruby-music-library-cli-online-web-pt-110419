class Song
  @@all = []
  
  attr_accessor :name, :genre
  attr_reader :artist
  
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
  
  def initialize(name, artist=nil, genre = nil)
    @name = name
    @artist = artist
    @genre = genre
    if artist
      self.artist=(artist)
    end
  end

  def save
    @@all << self
  end
  
  def artist= (artist)
    @artist = artist
    artist.add_song(self)
    @artist
  end
  
  def genre
    @genre
  end
  
  def genre= (genre)
    @genre = genre
    genre.add_song(self)
    @genre
end
end