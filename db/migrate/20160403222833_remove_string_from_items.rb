class RemoveStringFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :string, :string
  end
end
