# frozen_string_literal: true

class SessionsController < ApplicationController
  skip_before_action :check_logged_in

  def new; end

  def create
    name = params[:name]
    password = params[:password]

    user = User.find_by(name: name)

    if user.nil?
      render :new
    elsif user.authenticate(password)
      session[:name] = name
      redirect_to foods_path
    else
      render :new
    end
  end

  def delete
    session.delete(:name)
    redirect_to foods_path
  end
end
