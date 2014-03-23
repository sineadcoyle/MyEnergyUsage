class AddCreatedByAndUpdatedByToUtilityProviders < ActiveRecord::Migration
  def change
    add_reference :utility_providers, :user, index: true
    rename_column :utility_providers, :user_id, :created_by_id
    add_reference :utility_providers, :user, index: true
    rename_column :utility_providers, :user_id, :updated_by_id
  end
end
