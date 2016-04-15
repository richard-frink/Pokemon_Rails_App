class AddStatusToPokemons < ActiveRecord::Migration
  def change
    add_column :pokemons, :status, :string
  end
end
