require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@all = [] # stores songs

  def self.all
    @@all #displays all songs
  end


  def artist=(artist)
    @artist = artist  # reads only - srtist instance assigned to artist var
  end


end


# Song
#   can initialize a song
#   can have a name
#   converts its name to a url friendly parameter    
#   has an artist
#   Class methods
#     keeps track of the songs that have been created
#     can count how many songs have been created     
#     can find a song by name
#     can reset the songs that have been created     