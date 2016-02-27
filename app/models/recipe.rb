class Recipe < ActiveRecord::Base
  has_many :ingredients, through: :ingredient_units

  validates :title, presence: true
end
