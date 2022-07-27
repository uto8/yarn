class UserFile < ApplicationRecord
  belongs_to :user

  mount_uploader :file, ImageUploader
end
