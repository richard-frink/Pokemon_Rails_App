class RemoveOwnerIdFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :owner_id, :integer
  end
end
