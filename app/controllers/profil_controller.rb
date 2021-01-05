class ProfilController < ApplicationController
  def index
    @profils = User.all

    @user_name = params[:user_name]
    
    @user = User.find_by(username: @user_name)

    @favorites = Favorite.where(user: @user)
  end

  def new_recipe
    @recipe = Recipe.new

    @ingredients = Ingredient.all

    @tab_ingredients = []

    @ingredients.each do |ingredient|
      @tab_ingredients << ingredient.name
    end

    @mesures = ["gramme (g)", "kilogramme (kg)", "litre (L)", "millilitre (mL)", "centilitre (cL)", "c. à café", "c. à soupe", "c. à thé"]
  end

  def traitement_recipe
    @data = params[:recipe]
  end
end
