class Station < ActiveRecord::Base
  has_many :machines
end
