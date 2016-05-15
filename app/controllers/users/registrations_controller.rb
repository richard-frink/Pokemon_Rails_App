class Users::RegistrationsController < Devise::RegistrationsController
  #before_filter :authenticate_user!


  private

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