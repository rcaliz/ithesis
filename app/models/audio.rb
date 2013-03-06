class Audio < ActiveRecord::Base
  attr_accessible :audio, :description, :title

  validates :audio, :description, :title, :presence => true
  
  validates :audio, :format => {
	:with => %r{\.(mp3)$}i,
	:message => 'must be a MP3.'
  }

  mount_uploader :audio, AudioUploader
end
