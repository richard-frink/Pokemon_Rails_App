class AddExpToTrainersPokemon < ActiveRecord::Migration
  def change
    add_column :trainers_pokemons, :exp, :integer
  end
end
