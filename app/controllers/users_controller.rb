# frozen_string_literal: true

class UsersController < ApplicationController
  skip_before_action :check_logged_in

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)

    if user.save
      redirect_to foods_path
    else
      render :new
    end
  end

  private def user_params
    params.require(:user).permit(:name, :password)
  end
end
