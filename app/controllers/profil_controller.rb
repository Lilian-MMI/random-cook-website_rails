class ProfilController < ApplicationController
  def index
    @profils = User.all

    @user_name = params[:user_name]
    
    @user = User.find_by(username: @user_name)

    @favorites = Favorite.where(user: @user)
  end
end
