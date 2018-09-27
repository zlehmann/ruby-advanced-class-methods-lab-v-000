class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    created_song = Song.new
    created_song.save
    created_song
  end

  def name(name)
    @name = name
    @name
  end

  def self.new_by_name(name)
    created_song = Song.new(@name)
    created_song
  end
end
