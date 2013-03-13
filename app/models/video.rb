class Video < ActiveRecord::Base
  attr_accessible :description, :title, :video

  validates :video, :description, :title, :presence => true

  validates :video, :format => {
	:with => %r{\.(3gp)$}i,
	:message => 'must be a 3GP.'
  }

<<<<<<< HEAD
  belongs_to :reunion

=======
>>>>>>> 290743db3260ec73582e93a4103180d6a57d7a36
  mount_uploader :video, VideoUploader
end
