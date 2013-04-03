class Thesis < ActiveRecord::Base
  belongs_to :adviser
  attr_accessible :description, :title, :adviser
end
