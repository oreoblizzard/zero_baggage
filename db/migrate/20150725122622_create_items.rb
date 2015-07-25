class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price,  precision: 15, scale: 2
      t.integer :status, default: 1
      t.timestamps null: false
    end
  end
end
