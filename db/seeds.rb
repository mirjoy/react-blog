class Seeds
  def self.create_everything
    FoodGroup.destroy_all
    Unit.destroy_all

    create_units
    create_food_groups
  end

  def self.create_food_groups
    food_groups = ["dairy", "vegetable", "fruit", "meat", "grain", "fat", "nut", "legume"]
    food_groups.each do |f|
      FoodGroup.create(group: f)
      puts "creating food group: #{f}"
    end
  end

  def self.create_units
    units = ["ml", "liter", "gram", "kilogram"]
    units.each do |u|
      Unit.create(measurement: u)
      puts "creating unit: #{u}"
    end
  end
end

Seeds.create_everything

