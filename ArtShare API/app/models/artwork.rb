# == Schema Information
#
# Table name: artworks
#
#  id         :bigint(8)        not null, primary key
#  title      :text             not null
#  image_url  :text             not null
#  artist_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artwork < ApplicationRecord
  validates :image_url, presence: true, uniqueness: true
  validates :title, presence: true, uniqueness: {scope: :artist_id, message: "Artists cannot have multiple art with the same title"}

  belongs_to :artist,
    foreign_key: :artist_id,
    class_name: :User

  has_many :shares,
    foreign_key: :artwork_id,
    class_name: :ArtworkShare

  has_many :shared_viewers,
    through: :shares,
    source: :viewer
    
  has_many :comments,
    dependent: :destroy,
    foreign_key: :artwork_id,
    class_name: :Comment
end
