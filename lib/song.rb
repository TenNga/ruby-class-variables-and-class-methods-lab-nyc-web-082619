class Song 
  attr_accessor :name, :artist,:genre
  @@count = 0
  @@artists = [] 
  @@genres = []
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre 
    @@count += 1 
  end
  
  def self.count 
    @@count
  end
  
  def self.artists
    @@artists.uniq 
  end
  
  def self.genres 
    @@genres.uniq
  end
  
  def genre_count
    genreCount = {}
    @@genres.each do |genre|
      if genreCount.key.include(genre)
        genreCount[genre] += 1 
      else 
        genreCount[genre] = 1
      end
    end
  end
end