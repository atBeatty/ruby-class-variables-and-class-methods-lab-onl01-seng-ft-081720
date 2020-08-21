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

  @@artists << @artist
  @@genres << @genre
end

def count
  @@count
end
def artists
  @@artists
end






end
