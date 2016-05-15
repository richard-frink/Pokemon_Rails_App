class PagesController < ApplicationController

  before_action :authenticate_user!

  def inventory
  end

  def profile
  end

  def pokedex
    @pokemons = Pokemon.all
    @mypokemon = TrainersPokemon.where(trainer_id: current_user.id)
  end

  def pokemart
    @items = Item.all
  end

  def pokemon
    @pokemon = Pokemon.find(params[:pokemon_id])
  end

  def pokemon_team
    @mypokemon = TrainersPokemon.where(trainer_id: current_user.id)

    @team = Array.new

    @mypokemon.each do |p|
      @team.append(p) if p.pokemon_position == 1 || p.pokemon_position == 2 || p.pokemon_position == 3 || p.pokemon_position == 4 || p.pokemon_position == 5 || p.pokemon_position == 6
    end

    @team.sort_by! { |m| m["pokemon_position"]}
  end
end
