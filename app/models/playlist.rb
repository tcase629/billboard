class Playlist < ApplicationRecord
  has_many :artists, dependent: :destroy
  validates :artist, :genre, presence: true 
end
