class RecipeController < ApplicationController
    def index    
        @ingredients = Ingredient.all
    
        @tab_ingredients = []
    
        @ingredients.each do |ingredient|
          @tab_ingredients << ingredient.name
        end

        @mesures = ["g", "kg", "L", "mL", "cL", "c. à café", "c. à soupe", "c. à thé"]
        
        @diets = ["Végétarien", "Végétalien", "Sans glutten", "Fléxitarien", "Végan", "Viande", "Poisson"]
    end

    def new
        @recipe = Recipe.new
        @recipe_ingredient = RecipeIngredient.new
        @step = Step.new
    end
    

    def create
        @nom = params[:nom]
        @description = params[:description]
        @diet = params[:regime]
        @url = ""
        @preparation_time= params[:temps_prepa_h] + "h" + params[:temps_prepa_m]
        @baking_time= params[:temps_cuisson_h] + "h" + params[:temps_cuisson_h]
        @resting_time= params[:temps_repos_h] + "h" + params[:temps_repos_h]
        
        @recipe = Recipe.new(label: @nom, description: @description, url: @url, diet: @diet, preparation_time: @preparation_time, baking_time: @baking_time, resting_time: @resting_time)
        
        if @recipe.save
            redirect_to @recipe and return
        else 
            redirect_to :new
        end

        @recipe_ids = Recipe.where(label: @name)
                
        @recipe_ids.each do |id|
            @recipe_id = id.id
        end

        (1..6).each do |n|
            @ingredient_id = Ingredient.find_by(name: params[:"ingredient_#{n}"])
            
            @recipe_ingredient = RecipeIngredient.new(recipe_id: @recipe_id,
                                ingredient_id: @ingredient_id,
                                quantity: params[:"quantity_#{n}"],
                                unity: params[:"mesure_#{n}"])
        end

        if @recipe_ingredient.save
            redirect_to @recipe_ingredient and return
        else
            render :new
        end
    end
end
