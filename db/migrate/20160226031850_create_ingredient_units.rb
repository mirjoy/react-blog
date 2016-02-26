class CreateIngredientUnits < ActiveRecord::Migration
  def change
    create_table :ingredient_units do |t|
      t.integer  :ingredient_id
      t.integer  :recipe_id
      t.integer  :amount
      t.integer  :unit_id
    end
  end
end
