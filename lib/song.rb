class Song
    @@all = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end
    attr_accessor :name, :artist, :genre
    def self.all
        @@all
    end
end