class TrainersController < ApplicationController
  before_action :authenticate_user!

  def edit
    @user = current_user
  end

  def setup

    if new_user?
      ownership = TrainersPokemon.new
      ownership.trainer_id = current_user.id
      ownership.pokemon_id = current_user.starter
      ownership.pokemon_position = 1
      ownership.exp = 0
      ownership.shiny = 0
      ownership.shiny = 1 if is_shiny
      ownership.save

      Item.all.each do |item|
        ownership = TrainersItem.new
        ownership.trainer_id = current_user.id
        ownership.item_id = item.id
        if (item.id == 1) || (item.id == 5)
          ownership.qty = 5
        else
          ownership.qty = 0
        end
        ownership.save
      end
    end

    redirect_to trainers_index_url
  end

  private

  def new_user?
    @isnew = false
    temp = TrainersPokemon.find_by(trainer_id: current_user.id, exp: 0)
    if temp == nil
      @isnew = true
    end
    return @isnew
  end
end
