class PagesController < ApplicationController

  before_action :authenticate_user!

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

  def pokemon
    @pokemon = Pokemon.find(params[:pokemon_id])
  end

  def pokemon_team
  end
end
