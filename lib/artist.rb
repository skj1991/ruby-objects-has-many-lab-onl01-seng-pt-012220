class Artist

  @@song_count = 0

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add_song(song)
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
    @@song_count += 1
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.song_count
    @@all.
  end
end
