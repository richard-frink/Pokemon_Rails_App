class AddItemTypeToItems < ActiveRecord::Migration
  def change
    add_column :items, :item_type, :string
    add_column :items, :string, :string
  end
end
