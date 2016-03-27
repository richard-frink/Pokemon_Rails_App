class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protected
  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to user_session_path, :notice => 'This section is available to members only! Please log in!'

    end
  end

end
