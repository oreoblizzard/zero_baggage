class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.decimal :latitude,  precision: 10, scale: 6
      t.decimal :longitude,  precision: 10, scale: 6
      t.timestamps null: false
    end
  end
end
