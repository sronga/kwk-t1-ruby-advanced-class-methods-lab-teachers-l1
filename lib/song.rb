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
    newSong = self.new
    @@all << newSong
    return newSong
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    @@all << song
    return song
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    @@all << song
    return song
  end

  def self.find_by_name(name)
    self.all.detect do |song|
    song.name == name
    end
  end

  def self.find_or_create_by_name(name)
    if find_by_name(name) != nil
      return find_by_name(name)
    else
      create_by_name(name)
    end
  end

  def self.alphabetical
    self.all.sort_by {|song| song.name}
  end

  def self.new_from_filename()
  end

  def self.create_from_filename
  end

  def self.destroy_all
    @@all.clear
  end

end
