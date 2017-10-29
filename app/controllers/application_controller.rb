# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :check_logged_in

  def check_logged_in
    if session[:name].nil?
      redirect_to new_session_path
    end
  end
end
