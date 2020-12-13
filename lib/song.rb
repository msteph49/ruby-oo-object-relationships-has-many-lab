require_relative './artist.rb'
require "pry"
class Song
    attr_accessor :name, :artist 
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def artist_name  
       song.artist.name

    end
    
    def artist_name
        self.artist.name unless self.artist.nil?
    end

end