require 'pry'

class Artist
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable

  attr_accessor :name
  attr_reader :songs

  @@all = []  # class array storing artists

  def initialize  # artists and songs stores in two different arrays
    super
    @songs = [] # instance array
  end

  def self.all
    @@all # displays all artists in array
  end

  def add_song(song)
    @songs << song  # new arg/instance of song gets added to songs array
    song.artist = self  # instance of song's artist is stored as an artist
  end

  def add_songs(songs)
    songs.each {|song| add_song(song) }
    # pasres each song in array and puts song into songs array and has its artist stored
  end


end


# Artist
#   can be initialized
#   can have a name
#   converts its name to a url friendly parameter        
#   Class methods
#     keeps track of the artists that have been created  
#     can count how many artists have been created       
#     can find an artist by name
#     can reset the artists that have been created       
#   with songs
#     can have a song added
#     knows how many songs it has