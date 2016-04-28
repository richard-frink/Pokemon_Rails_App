class Users::RegistrationsController < Devise::RegistrationsController
  #before_filter :authenticate_user!

  private

  def sign_up_params
    params.require(:user).permit(:username, :email , :password, :password_confirmation, :avatar, :starter, :money)

    #set up trainers_pokemon relation
  end

  def account_update_params
    params.require(:user).permit(:username, :avatar, :starter, :email, :password, :password_confirmation, :current_password, :money)
  end
end