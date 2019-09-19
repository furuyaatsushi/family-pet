class Case < ApplicationRecord
  belongs_to :user
  belongs_to :prefecture

  validates :image, presence: true
  validates :age, presence: true

  mount_uploader :image, ImageUploader
end
