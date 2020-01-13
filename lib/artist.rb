class Artist
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    attr_accessor :name
    def self.all
        @@all
    end
    def new_song(song_name, song_genre)
        song = Song.new(song_name, self, song_genre)
    end
    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end
    def genres
        songs.map do |song|
            song.genre
        end
    end
end