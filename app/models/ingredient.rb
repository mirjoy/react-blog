class Ingredient < ActiveRecord::Base
  has_many :recipes, through: :ingredient_units
end
