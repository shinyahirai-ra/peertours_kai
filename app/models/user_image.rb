class UserImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :user

 #  validates :user_id, uniqueness: true

  
end
