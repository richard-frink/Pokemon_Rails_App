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
end
