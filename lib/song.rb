class Song

    attr_accessor :name, :artist, :genre

    @@count = 0 
    @@artists = [] # includes duplicates
    @@genres = [] # includes duplicates

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists.push(artist)
        @@genres.push(genre)
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
        output_hash = {}
        @@genres.each do |ele|
            if output_hash.has_key?(ele)
                output_hash[ele] += 1
            else
                output_hash[ele] = 1
            end
        end
        output_hash
    end

    def self.artist_count
        output_hash = {}
        @@artists.each do |ele|
            if output_hash.has_key?(ele)
                output_hash[ele] += 1
            else
                output_hash[ele] = 1
            end
        end
        output_hash
    end
end
