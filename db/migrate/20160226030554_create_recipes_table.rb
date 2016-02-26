class CreateRecipesTable < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string  :title
      t.string  :directions
      t.integer :baking_time
      t.integer :baking_temperature
      t.integer :servings
    end
  end
end
