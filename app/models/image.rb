class Image < ActiveRecord::Base
  attr_accessible :description, :image, :title
  
  validates :image, :description, :title, :presence => true

  validates :image, :format => {
	:with => %r{\.(jpg|png)$}i,
	:message => 'must be a JPEG or PNG.'
  }

  mount_uploader :image, ImageUploader
end
