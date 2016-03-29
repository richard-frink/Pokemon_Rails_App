class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :avatar, :text
    add_column :users, :starter, :integer
  end
end
