class Users::RegistrationsController < Devise::RegistrationsController
  #before_filter :configure_permitted_parameters, :only => [:create]

  private

  def sign_up_params
    params.require(:user).permit(:username, :avatar, :starter, :email, :password, :password_confirmation, :money)
  end

  def account_update_params
    params.require(:user).permit(:username, :avatar, :starter, :email, :password, :password_confirmation, :current_password, :money)
  end
end