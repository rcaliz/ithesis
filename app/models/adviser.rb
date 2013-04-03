class Adviser < User
  attr_accessible :degree
  has_many :theses
end
