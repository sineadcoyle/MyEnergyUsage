class AddUtilityProviderToGasBills < ActiveRecord::Migration
  def change
    add_reference :gas_bills, :utility_provider, index: true, :null => false
  end
end
