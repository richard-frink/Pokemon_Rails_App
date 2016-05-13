class Users::RegistrationsController < Devise::RegistrationsController
  #before_filter :authenticate_user!

  helper_method :setup_starter

  def setup

  end

  private

  def setup_starter
    #set up trainers_pokemon relation

    ownership = TrainersPokemon.new
    #tempuser = User.find_by(email: sign_up_params[:email])
    #ownership.trainer_id = tempuser.id
    #ownership.pokemon_id = tempuser.starter
    ownership.trainer_id = current_user.id
    ownership.pokemon_id = current_user.starter
    ownership.pokemon_position = 1
    ownership.exp = 0
    ownership.save
  end

  def sign_up_params
    params.require(:user).permit(:username, :email , :password, :password_confirmation, :avatar, :starter, :money)
  end

  def account_update_params
    params.require(:user).permit(:username, :avatar, :starter, :email, :password, :password_confirmation, :current_password, :money)
  end

  protected

  def after_sign_up_path_for(resource)
    trainers_setup_url # Or :prefix_to_your_route
  end

end