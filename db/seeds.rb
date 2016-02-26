def create_units
  units = ["ml", "liter", "gram", "kilogram"]
  units.each do |u|
    Unit.create(measurement: u)
    puts "creating unit: #{u}"
  end
end

create_units
