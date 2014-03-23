class ChangeCreatedByIdColumnToNotAllowNullOnUtilityProviders < ActiveRecord::Migration
  def change
    change_column_null :utility_providers, :created_by_id, false
  end
end
