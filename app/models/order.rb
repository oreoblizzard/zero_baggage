class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :machine
  has_many :order_items

  enum status: {cancelled: -1, pending: 1, paid: 2, success: 0}
  # new: new order create
  # paid: order has been paid wait customer to take
  # success: customer received package

  accepts_nested_attributes_for :order_items

end
