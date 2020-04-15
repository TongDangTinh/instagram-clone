class Post < ApplicationRecord
  belongs_to :account
  mount_uploader :image, ImageUploader

  has_many :likes
  has_many :comments
end
