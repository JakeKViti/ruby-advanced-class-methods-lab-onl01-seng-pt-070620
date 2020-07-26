class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def Song.create
    song = self.new
    @@all << song
    song
  end

  def Song.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def Song.create_by_name(name)
    song = self.new
    song.name = name
    @@all << song
    song
  end

  def Song.find_by_name(name)
   self.all.detect{|song| song.name = name}
  end

  def Song.destroy_all
    @@all = []
  end
end
