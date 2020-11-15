class Project < ApplicationRecord
  has_one_attached :preview_photo
  has_many_attached :images
  has_many_attached :videos
end
