class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  before_action :authenticate

  def current_user
    @current_user ||= User.find_by id: session[:user_id]
  end

  private

  def authenticate
    session[:user_id] = nil if user_logged_in?
  end

  def check_login
    redirect_to new_user_path if user_logged_in?
  end

  def authorize
    redirect_to new_session_path if user_logged_in?
  end

  def user_logged_in?
    current_user.nil?
  end
end
