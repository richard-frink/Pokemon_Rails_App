class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :type
      t.integer :owner_id

      t.timestamps null: false
    end
  end
end
