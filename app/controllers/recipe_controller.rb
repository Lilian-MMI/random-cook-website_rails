class RecipeController < ApplicationController
    def index    
        @ingredients = Ingredient.all
    
        @tab_ingredients = []
    
        @ingredients.each do |ingredient|
          @tab_ingredients << ingredient.name
        end

        @id = cookies.permanent.signed[:remember_token][0]
    
        @user = User.find(@id)

        @mesures = ["g", "kg", "L", "mL", "cL", "c. à café", "c. à soupe", "c. à thé"]
        
        @diets = ["Végétarien", "Végétalien", "Sans glutten", "Fléxitarien", "Végan", "Viande", "Poisson"]
    end

    def new
        @recipe = Recipe.new
        @recipe_ingredient = RecipeIngredient.new
        @step = Step.new
    end
    

    def create
        @id = cookies.permanent.signed[:remember_token][0]
        @nom = params[:nom]
        @description = params[:description]
        @diet = params[:regime]
        @url = "https://ctt.trains.com/sitefiles/images/no-preview-available.png"
        @preparation_time= params[:temps_prepa_h] + "h" + params[:temps_prepa_m]
        @baking_time= params[:temps_cuisson_h] + "h" + params[:temps_cuisson_h]
        @resting_time= params[:temps_repos_h] + "h" + params[:temps_repos_h]
               
        @recipe = Recipe.new(label: @nom, 
                            description: @description, 
                            url: @url, 
                            diet: @diet, 
                            preparation_time: @preparation_time, 
                            baking_time: @baking_time, 
                            resting_time: @resting_time,
                            creator: @id)
        @recipe.save

        @recipe_ids = Recipe.where(label: @nom)
                
        @recipe_ids.each do |id|
            @recipe_id = id.id
        end

        (1..6).each do |n|
            @ingredients = Ingredient.where(name: params[:"ingredient_#{n}"])
            
            @ingredients.each do |ingredient|
                @ingredient_id = ingredient.id
            end
            @quanint = params[:"quantity_#{n}"].to_i

            @recipe_ingredient = RecipeIngredient.new(recipe_id: @recipe_id,
                                ingredient_id: @ingredient_id,
                                quantity: @quanint,
                                unity: params[:"mesure_#{n}"])

            @recipe_ingredient.save
        end

        (1..4).each do |n|
            @step = Step.new(recipe_id: @recipe_id, 
                            step_number: n, 
                            description: params[:"etape_#{n}"])

            @step.save
        end

        redirect_to "/profil?id="+@id.to_s
    end

    def show
        @recipe = Recipe.find(params[:id])
        @recipeIngredients = RecipeIngredient.where(recipe_id: @recipe)
        @ingredients = Ingredient.where(id: @recipeIngredients)
        @steps = Step.where(recipe_id: @recipe)
    end

    def delete
        @id = cookies.permanent.signed[:remember_token][0]
        Recipe.delete_by(id: params[:id])

        redirect_to "/profil?id="+@id.to_s
    end

    def random_week
        @recipes = Recipe.all.pluck(:id).shuffle[0..6].map do |recipe_id| 
            Recipe.find(recipe_id)
        end
        
        @recipe_ingredients = RecipeIngredient.where(recipe_id: @recipes.pluck(:id))

        @recipe_steps = Step.where(recipe_id: @recipes.pluck(:id))
    end
end
