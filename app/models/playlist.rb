class Playlist < ApplicationRecord
  has_many :artists, dependent: :destroy
  validates :artist, presence: true 
end
