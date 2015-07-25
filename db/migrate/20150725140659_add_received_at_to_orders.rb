class AddReceivedAtToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :receive_date, :datetime, after: :code
    add_column :orders, :received_at, :datetime, after: :received_date
  end
end
