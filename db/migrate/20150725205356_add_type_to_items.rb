class AddTypeToItems < ActiveRecord::Migration
  def change
    add_column :items, :type, :string, after: :id
  end
end
