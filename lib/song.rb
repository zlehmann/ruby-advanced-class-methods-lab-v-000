class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def initialize(name, artist)
    @name = name
    @artist = artist
  end

  def self.create
    created_song = Song.new("","")
    created_song.save
    created_song
  end

  def self.new_by_name(name)
    created_song = Song.new(name, "")
    created_song
  end

  def self.create_by_name(name)
    created_song = Song.new(name, "")
    created_song.save
    created_song
  end

  def self.find_by_name(name)
    @@all.each do |song|
      if song.name == name
        song
      end
    end
  end
end
