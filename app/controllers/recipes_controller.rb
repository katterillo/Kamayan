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

    
end