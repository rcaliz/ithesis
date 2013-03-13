class Audio < ActiveRecord::Base
  attr_accessible :audio, :description, :title

  validates :audio, :description, :title, :presence => true
  
  validates :audio, :format => {
	:with => %r{\.(mp3)$}i,
	:message => 'must be a MP3.'
  }

<<<<<<< HEAD
  belongs_to :reunion

=======
>>>>>>> 290743db3260ec73582e93a4103180d6a57d7a36
  mount_uploader :audio, AudioUploader
end
