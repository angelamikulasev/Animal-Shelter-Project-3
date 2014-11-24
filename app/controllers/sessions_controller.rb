class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.where(:email => params[:email]).first
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to new_session_path, :flash => {:error => 'Incorrect login'}
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end