class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string  :food
      t.integer :food_group_id
    end
  end
end
