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
  @@genres.uniq.each do |genre|
    count_hash[genre] = @@genres.count(genre)
  end
  count_hash
end


def self.genre_count
  artist_count_hash = {}
  @@artists.uniq.each do |artist|
    count_hash[artist] = @@artists.count(artist)
  end
  artist_count_hash
end





end
