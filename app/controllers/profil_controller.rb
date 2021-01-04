class ProfilController < ApplicationController
  def index
    @profils = Profil.all
    @favorites = Favorite.all
  end

  def show
    @profils = Profil.find(params[:id])
  end
end
