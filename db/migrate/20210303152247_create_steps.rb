class CreateSteps < ActiveRecord::Migration[6.1]
  def change
    create_table :steps do |t|
      t.string :description, null: false
      t.integer :order, null: false
      t.timestamps
    end
  end
end
