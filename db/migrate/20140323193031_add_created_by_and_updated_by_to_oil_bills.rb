class AddCreatedByAndUpdatedByToOilBills < ActiveRecord::Migration
  def change
    add_reference :oil_bills, :user, index: true, null: false
    rename_column :oil_bills, :user_id, :created_by_id
    add_reference :oil_bills, :user, index: true
    rename_column :oil_bills, :user_id, :updated_by_id
  end
end
