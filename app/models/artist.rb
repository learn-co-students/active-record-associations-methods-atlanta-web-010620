class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_songs
    self.songs
  end

  def get_first_song
    self.songs.first
  end

  def get_genre_of_first_song
    get_first_song.genre
  end

  def song_count
    get_songs.count
  end

  def genre_count
    get_songs.map{|song| song.genre}.count
  end
end
