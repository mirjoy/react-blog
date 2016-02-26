class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :measurement
    end
  end
end
