class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    genres = []
    @@genres.each do |genre|
      if !genres.include?(genre)
        genres << genre
      end
    end
    genres
  end
  
  def self.artists
    
  end
end