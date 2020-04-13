class Post < ApplicationRecord
  belongs_to :account
  mount_uploader :image, ImageUploader

  def total_likes
    0
  end
end
