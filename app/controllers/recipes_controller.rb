class RecipesController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :update]

    def index 
        @recipes = Spoonacular.search_recipes(params[:query])
        @query = (params[:query])
    end
    
    def show
        @recipe = Spoonacular.find_recipe(params[:id])
    end

    def new
        @recipe = Recipe.new
        @recipe.ingredients.build
        @recipe.steps.build
    end

    def create
        @recipe = Recipe.new(recipe_params.merge({user_id: current_user.id}))
         if @recipe.save
            redirect_to my_recipe_path(id: @recipe.id)
        else
            render 'new'
        end
    end

    def update
        @recipe = Recipe.find(params[:id])
        @recipe.update(recipe_params)
        redirect_to my_recipe_path(@recipe)
    end

    def recipe_params
        params.require(:recipe).permit(
            :title, :description,
            ingredients_attributes:[ :id, :measurement, :description, :_destroy ],
            steps_attributes:[ :id, :order, :description, :_destroy ])
    end

end