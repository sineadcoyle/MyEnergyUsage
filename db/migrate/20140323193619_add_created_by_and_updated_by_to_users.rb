class AddCreatedByAndUpdatedByToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :user, index: true, null: false
    rename_column :users, :user_id, :created_by_id
    add_reference :users, :user, index: true
    rename_column :users, :user_id, :updated_by_id
  end
end
