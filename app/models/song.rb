class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes
  accepts_nested_attributes_for :notes

  def artist_attributes=(artist)
    self.artist = Artist.find_or_create_by(name: artist[:name])
    self.artist.update(artist)
  end

  # def genre_name=(name)
  #   self.genre = Genre.find_or_create_by(name: name)
  # end

  # def genre_name
  #   self.genre ? self.genre.name : nil
  # end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

end
