class AddCreatedByAndUpdatedByToElectricityBills < ActiveRecord::Migration
  def change
    add_reference :electricity_bills, :user, index: true, null: false
    rename_column :electricity_bills, :user_id, :created_by_id
    add_reference :electricity_bills, :user, index: true
    rename_column :electricity_bills, :user_id, :updated_by_id
  end
end
