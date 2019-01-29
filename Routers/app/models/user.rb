class User < ApplicationRecord
  validates :name, presence: true 
  validates :email, presence: true, uniqueness: true

  has_many :views,
  foreign_key: :viewer_id,
  class_name: :ArtworkShare
end
