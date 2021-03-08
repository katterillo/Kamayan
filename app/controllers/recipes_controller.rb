class RecipesController < ApplicationController
    before_action :authenticate_user!, only: [:new]

    def index 
        @recipes = Spoonacular.search_recipes(params[:query])
        @query = (params[:query])
    end
    
    def show
        @recipe = Spoonacular.find_recipe(params[:id])
    end

    def new
        @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.new(recipe_params.merge({user_id: current_user.id}))
        #current_user.recipes << Recipe.find(current_user.id)
        if @recipe.save
            redirect_to @recipe
        else
            render 'new'
        end
    end

    def recipe_params
        params.require(:recipe).permit(
            :title, :description,
            ingredients_attributes: [ :measurement, :description, :_destroy ]
        )
    end

end