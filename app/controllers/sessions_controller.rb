class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.where(:email => params[:session][:email]).first
    if user.present? && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to root_path, :flash => {:notice => "Welcome back, #{ user.firstname }"}
    else
      redirect_to new_session_path, :flash => {:error => 'Incorrect login'}
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, :flash => {:notice => 'You are now signed out'}
  end
end