class CreateBuildingEnergyRatings < ActiveRecord::Migration
  def change
    create_table :building_energy_ratings do |t|
      t.string :building_rating, limit: 1, :null => false
      t.decimal :annual_energy, :null => false

      t.timestamps
    end
  end
end
