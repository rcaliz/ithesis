class Video < ActiveRecord::Base
  attr_accessible :description, :title, :video

  validates :video, :description, :title, :presence => true

  validates :video, :format => {
	:with => %r{\.(3gp)$}i,
	:message => 'must be a 3GP.'
  }

  belongs_to :reunion

  mount_uploader :video, VideoUploader
end
