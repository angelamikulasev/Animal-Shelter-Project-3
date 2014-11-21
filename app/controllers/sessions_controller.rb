class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by(firstname: params[:firstname])
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      @error = "Login Incorrect"
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end