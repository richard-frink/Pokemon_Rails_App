class AddDefaultValueToMoney < ActiveRecord::Migration


  def up
    add_column :users, :money, :integer, :default => 3000
  end

  def down
    remove_column :users, :money, :integer, :default => nil
  end
end
