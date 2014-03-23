class AddCreatedByAndUpdatedByToGasBills < ActiveRecord::Migration
  def change
    add_reference :gas_bills, :user, index: true, null: false
    rename_column :gas_bills, :user_id, :created_by_id
    add_reference :gas_bills, :user, index: true
    rename_column :gas_bills, :user_id, :updated_by_id
  end
end
