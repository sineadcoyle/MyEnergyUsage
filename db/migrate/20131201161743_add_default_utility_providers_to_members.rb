class AddDefaultUtilityProvidersToMembers < ActiveRecord::Migration
  def change
    add_column :members, :default_gas_provider, :integer
    add_column :members, :default_electricity_provider, :integer
    add_column :members, :default_oil_provider, :integer
  end
end
