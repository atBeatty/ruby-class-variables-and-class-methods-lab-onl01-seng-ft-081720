class Song
@@count = 0
@@artists = []
@@genres = []

attr_accessor :name, :artist, :genre

def initialize(name, artist, genre)
  @@count += 1

  @name=(name)
  @artist=(artist)
  @genre=(genre)

  @@artists.include?(artist) ? @@artists : @@artists << @artist
  @@genres << @genre if !@@genres.include?(genre)
end

def self.count
  @@count
end
def self.artists

  @@artists
end

def self.genres
  @@genres
end







end
