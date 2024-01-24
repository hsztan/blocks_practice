class Song
  attr_reader :name, :artist, :duration

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def play
    puts "Playing '#{name}' by #{artist} (#{duration} mins)..."
  end
end

class Playlist
  include Enumerable

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def each
    @songs.each { |song| yield song }
  end

  def play_songs
    each { |song| song.play }
  end

  def each_by_artist(artist)
    select { |song| song.artist == artist }.each { |song| yield song }
  end
end

song_1 = Song.new("Bohemian Rhapsody", "Queen", 6)
song_2 = Song.new("Purple Rain", "Prince", 5)
song_3 = Song.new("Stairway to Heaven", "Led Zeppelin", 7)
song_4 = Song.new("The Rain Song", "Led Zeppelin", 7)
song_5 = Song.new("Niagara en Bicicleta", "Juan Luis Guerra", 4)

playlist = Playlist.new("My Playlist")
playlist.add_song(song_1)
playlist.add_song(song_2)
playlist.add_song(song_3)
playlist.add_song(song_4)
playlist.add_song(song_5)

# playlist.play_songs
# zepellin_songs = playlist.select { |song| song.artist == "Led Zeppelin" }
# p zepellin_songs
# playlist.each_by_artist("Led Zeppelin") { |song| song.play }

dir = Dir.new("/Users/hnawrocki")
dir.each { |entry| puts entry }