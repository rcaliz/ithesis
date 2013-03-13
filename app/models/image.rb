class Image < ActiveRecord::Base
  attr_accessible :description, :image, :title
  
  validates :image, :description, :title, :presence => true

  validates :image, :format => {
	:with => %r{\.(jpg|png)$}i,
	:message => 'must be a JPEG or PNG.'
  }

<<<<<<< HEAD
  belongs_to :reunion
  
=======
>>>>>>> 290743db3260ec73582e93a4103180d6a57d7a36
  mount_uploader :image, ImageUploader
end
