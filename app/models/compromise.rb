class Compromise < ActiveRecord::Base
  attr_accessible :date, :description, :reunion_id, :state

  validates :date, :description, :presence => true

  belongs_to :reunion
end
