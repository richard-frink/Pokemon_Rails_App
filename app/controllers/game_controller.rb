class GameController < ApplicationController
  def map
  end

  def dex
    @pokemons = Pokemon.all
    render :json => @pokemons
  end
  helper_method :dex

  def trainerIcon
    trainer_icon = User.find(current_user.id);
    render :json => trainer_icon
  end
  helper_method :trainerIcon

  def trainerTeam
    @trainer_team = TrainersPokemon.find_by_trainer_id(current_user.id)
    render :json => @trainer_team
  end
  helper_method :trainerTeam

  def caughtPokemon
    puts params[:para]

    ownership = TrainersPokemon.new
    ownership.trainer_id = current_user.id
    ownership.pokemon_id = params[:para]
    ownership.pokemon_position = 0
    ownership.exp = 0
    ownership.shiny = 0
    ownership.shiny = 1 if is_shiny
    ownership.save

    return nil
  end
  helper_method :caughtPokemon


end
