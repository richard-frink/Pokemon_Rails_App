class CreateTrainersPokemons < ActiveRecord::Migration
  def change
    create_table :trainers_pokemons do |t|
      t.integer :trainer_id
      t.integer :pokemon_id
      t.integer :pokemon_position

      t.timestamps null: false
    end
  end
end
