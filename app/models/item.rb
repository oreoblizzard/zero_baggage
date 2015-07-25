class Item < ActiveRecord::Base
  has_many :item_logs

  enum status: {gone: -1, inactive: 0, active: 1, reserved: 2, maintenance: 10}
end
