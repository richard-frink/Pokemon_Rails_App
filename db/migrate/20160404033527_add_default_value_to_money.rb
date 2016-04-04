class AddDefaultValueToMoney < ActiveRecord::Migration


  def up
    change_column :users, :money, :integer, :default => 3000
  end

  def down
    change_column :users, :money, :integer, :default => nil
  end
end
