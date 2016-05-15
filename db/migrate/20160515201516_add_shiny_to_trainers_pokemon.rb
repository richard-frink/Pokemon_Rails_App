class AddShinyToTrainersPokemon < ActiveRecord::Migration
  def change
    add_column :trainers_pokemons, :shiny, :integer
  end
end
