class Artwork < ApplicationRecord
  validates :artist_id, :title, presence: true, uniqueness: true

  has_many :shared_views,
  foreign_key: :artwork_id,
  class_name: :ArtworkShare

  has_many :shared_viewers,
  through: :shared_views,
  source: :viewer
end
