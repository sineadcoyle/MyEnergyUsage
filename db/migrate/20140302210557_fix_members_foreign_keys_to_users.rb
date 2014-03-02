class FixMembersForeignKeysToUsers < ActiveRecord::Migration
  def change
    rename_column :electricity_bills, :members_id, :users_id
    rename_column :oil_bills, :members_id, :users_id
    rename_column :gas_bills, :members_id, :users_id
  end
end
