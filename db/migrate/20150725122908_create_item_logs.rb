class CreateItemLogs < ActiveRecord::Migration
  def change
    create_table :item_logs do |t|
      t.references :user
      t.references :item
      t.references :machine
      t.string :action, null: false
      t.timestamps null: false
    end
  end
end
