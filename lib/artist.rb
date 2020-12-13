#require_relative './song.rb'
require 'pry'
class Artist
    attr_accessor :name
    # attr_reader :song
        
    def initialize(name)
        @artist = name
        @song = []
    end
    def name       
        @artist
    end
    def add_song(song)
        song.artist = self
    end
    def songs 
        Song.all.select {|song| song.artist = self}
    end
    def add_song_by_name(name)
        new_song = Song.new(name)
        new_song.artist = self
        new_song
    end
    def self.song_count
        Song.all.size
    end

end