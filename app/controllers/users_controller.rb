class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, :flash => {:notice => "Welcome to Animal Rescue #{ @user.firstname }"}
    else
      render :new
    end
  end

  def edit
    @user = @current_user
  end

  def update
    user = @current_user
    user.update user_params
    redirect_to user
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
    # binding.pry
  end

  private
  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
  end

end