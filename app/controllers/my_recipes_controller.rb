class MyRecipesController < ApplicationController
    before_action :authenticate_user!

    def index 
        @my_recipes = current_user.recipes
        respond_to do |format|
         format.html { render :index, locals: { recipes: @recipes } }
       end
     end

    def show
        @recipe = Recipe.find(params[:id])
    end

end