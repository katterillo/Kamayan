class AddRecipeToStep < ActiveRecord::Migration[6.1]
  def change
    add_reference :steps, :recipe, null: false, foreign_key: true
  end
end
