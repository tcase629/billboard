
class Song < ApplicationRecord
  belongs_to :artist
  validates :title, :album, presence: true 
  validates :rank, numericality: { only_integer: true } 
end