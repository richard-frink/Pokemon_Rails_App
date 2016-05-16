class CreateTrainersItems < ActiveRecord::Migration
  def change
    create_table :trainers_items do |t|
      t.integer :trainer_id
      t.integer :item_id
      t.integer :qty

      t.timestamps null: false
    end
  end
end
