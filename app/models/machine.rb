class Machine < ActiveRecord::Base
  belongs_to :station
  has_many :orders

end
