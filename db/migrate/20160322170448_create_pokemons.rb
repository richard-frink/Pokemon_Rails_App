class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :type1
      t.string :type2
      t.text :move1
      t.text :move2
      t.text :move3
      t.text :move4
      t.integer :hp
      t.integer :attack
      t.integer :defense
      t.integer :specialAttack
      t.integer :specialDefense
      t.integer :speed

      t.timestamps null: false
    end
  end
end
