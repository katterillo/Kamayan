class RecipesController < ApplicationController
    def index 
        @recipes = Spoonacular.search_recipes(params[:query])
        @query = (params[:query])
    end
    
    def show
        @recipe = Spoonacular.find_recipe(params[:id])
    end
end