class PagesController < ApplicationController

  before_action :authenticate_user!

  def inventory
    @items = Item.all
    @myitems = TrainersItem.where(trainer_id: current_user.id)
  end

  def profile
  end

  def pokedex
    @pokemons = Pokemon.all
    @mypokemon = TrainersPokemon.where(trainer_id: current_user.id)
  end

  def pokemart
    @items = Item.all

    @items.each do |item|
      if params[item.name].to_i != 0
        buy_item(Item.find_by(name: item.name).id, params[item.name].to_i)
      end
    end
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

    @team.sort_by { |m| m["pokemon_position"]}
  end

  protected

  def buy_item(id, qty)
    @item = Item.find(id)

    if @item.price * qty < current_user.money
      current_user.update(money: current_user.money - @item.price * qty)

      @myitem = TrainersItem.find_by(trainer_id: current_user.id, item_id: @item.id)
      @myitem.update(qty: @myitem.qty + qty)
    else
      puts "Cannot afford quantity input. Try again."
    end
  end

end
