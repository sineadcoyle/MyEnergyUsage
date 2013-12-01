class AddUtilityProviderToElectricityBills < ActiveRecord::Migration
  def change
    add_reference :electricity_bills, :utility_provider, index: true, :null => false
  end
end
