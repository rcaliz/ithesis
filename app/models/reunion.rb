class Reunion < ActiveRecord::Base
  attr_accessible :date, :duration, :place, :subject
  validates :date, :duration, :place, :subject, :presence => true
  has_many :images, :dependent => :destroy
  has_many :videos, :dependent => :destroy
  has_many :audios, :dependent => :destroy
end