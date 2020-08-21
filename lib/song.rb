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

def self.count
  @@count
end
def self.artists

  @@artists.uniq
end

def self.genres
  @@genres.uniq
end

def self.genre_count
  count_hash = {}
  counter = 0
  while counter < @@genres.uniq.length
    count_hash[@@genres[counter] = @@genres.count(@@genres[counter])]
  end
  count_hash
end







end
