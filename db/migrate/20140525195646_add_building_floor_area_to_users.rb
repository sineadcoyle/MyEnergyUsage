class AddBuildingFloorAreaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :building_floor_area, :decimal
  end
end
