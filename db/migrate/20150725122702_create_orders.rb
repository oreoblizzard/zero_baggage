class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user
      t.references :machine
      t.integer :status
      t.string :code

      t.timestamps null: false
    end
  end
end
