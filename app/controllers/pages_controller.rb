class PagesController < ApplicationController
  def bag
  end

  def profile
  end

  def pokedex

    @pokemons = Pokemon.all

  end

  def pokemart

    @items = Item.all


  end

  def pokemon_team
  end
end
