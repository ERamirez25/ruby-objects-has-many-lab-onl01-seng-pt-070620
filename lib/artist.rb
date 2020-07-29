class Artist
   attr_accessor :name
   @@song_count = 0
   def initialize(name)
     @name = name
     
end 
def songs
  Song.all.collect do |song| 
    if song.artist == self
      song
    end 
  end 
  
end
  
   def add_song(song)
     
     song.artist = self
     @@song_count += 1
   end

   def add_song_by_name(song_name)
     song = Song.new(song_name)
   
     song.artist = self
     @@song_count += 1
   end

   def self.song_count
     @@song_count
   end

 end