class Post < ApplicationRecord
  belongs_to :account
  mount_uploader :image, ImageUploader

  has_many :likes

  def total_likes
    0
  end
end
