class MyRecipesController < ApplicationController
    before_action :authenticate_user!

    def index 
        @my_recipes = current_user.recipes
     end

    def show
        @recipe = Recipe.find(params[:id])
    end

    def edit
        @recipe = Recipe.find(params[:id])
    end
    
    def destroy
        @recipe = Recipe.find(params[:id])
        @recipe.destroy
        redirect_to my_recipes_path
      end

   
    def recipe_params
        params.require(:recipe).permit(
            :title, :description,
            ingredients_attributes:[ :measurement, :description, :_destroy ])
    end

end