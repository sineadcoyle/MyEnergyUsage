class AddCreatedByAndUpdatedByToBuildingEnergyRatings < ActiveRecord::Migration
  def change
    add_reference :building_energy_ratings, :user, index: true, null: false
    rename_column :building_energy_ratings, :user_id, :created_by_id
    add_reference :building_energy_ratings, :user, index: true
    rename_column :building_energy_ratings, :user_id, :updated_by_id
  end
end
