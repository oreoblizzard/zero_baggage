class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :machine

  enum status: {cancelled: -1, new: 1, paid: 2, success: 0}
  # new: new order create
  # paid: order has been paid wait customer to take
  # success: customer received package

end
