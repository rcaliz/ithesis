class Audio < ActiveRecord::Base
  attr_accessible :audio, :description, :title
  mount_uploader :audio, AudioUploader
end
