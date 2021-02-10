class RecipesController < ApplicationController
    def index 
        @recipes = Spoonacular.search_recipes(params[:query])
    end
end