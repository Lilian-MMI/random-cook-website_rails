class ProfilController < ApplicationController
  def index
    @profils = User.all

    @id = params[:id]
    
    @user = User.find(@id)

    @favorites = Favorite.where(user: @user)

    @recipes = Recipe.where(creator: @id)
  end
end
