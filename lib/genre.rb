class Genre
  attr_reader :genre, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    @@all.each {|song| song.self}
  end

  def artists
    songs.each {|song| song.Artist}
  end

  def songs
    Song.all
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end

end
