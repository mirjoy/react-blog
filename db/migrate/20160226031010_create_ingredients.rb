class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string  :food
      t.boolean :nut
      t.boolean :paleo
      t.boolean :vegan
      t.boolean :vegetarian
      t.boolean :gluten_free
      t.boolean :dairy
    end
  end
end
