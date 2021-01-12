class UsersController < ApplicationController

  def index
    @users = User.all

    redirect_to "/"
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end 

  def create
    @user = User.new(user_params)
    if @user.password == @user.password_confirmation
    else
      redirect_to controller: 'inscription', action: 'index', error: '1'
      return
    end
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to "/sessions/new"
    else
      render 'new'
    end
  end
  
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

end