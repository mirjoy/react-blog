class CreateRecipesTable < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string  :title
      t.string  :directions
      t.integer :baking_time
      t.integer :baking_temperature
      t.integer :servings
      t.boolean :nut
      t.boolean :paleo
      t.boolean :vegan
      t.boolean :vegetarian
      t.boolean :gluten_free
      t.boolean :dairy
    end
  end
end
