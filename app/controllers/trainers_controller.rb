class TrainersController < ApplicationController
  before_action :authenticate_user!

  def edit
    @user = current_user
  end
end
