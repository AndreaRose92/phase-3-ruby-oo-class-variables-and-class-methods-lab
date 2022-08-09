class Song
    
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize name, artist, genre
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists.push artist
        @@genres.push genre
    end

    def Song.count
        @@count
    end

    def Song.artists
        @@artists.uniq
    end

    def Song.genres
        @@genres.uniq
    end

    def Song.genre_count
        @@genres.tally
    end

    def Song.artist_count
        @@artists.tally
    end

end
