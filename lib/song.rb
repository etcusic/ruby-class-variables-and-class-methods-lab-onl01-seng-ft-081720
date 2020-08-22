class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre

        add_artist(artist)
        add_genre(genre)

    end

    def self.count
        @@count
    end

    def self.genre_count
        hash = {}
        @@genres.each do |gen|
            if hash[gen] 
              hash[gen] =  hash[gen] + 1
            else
              hash[gen] = 1
            end
        end
        hash
    end

    def self.artist_count
        hash = {}
        @@artists.each do |art|
            if hash[art] 
              hash[art] =  hash[art] + 1
            else
              hash[art] = 1
            end
        end
        hash
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def add_artist(artist)
        @@artists << artist
    end

    def add_genre(genre)
        @@genres << genre
    end
end