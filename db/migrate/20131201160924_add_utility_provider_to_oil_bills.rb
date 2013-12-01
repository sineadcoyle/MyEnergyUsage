class AddUtilityProviderToOilBills < ActiveRecord::Migration
  def change
    add_reference :oil_bills, :utility_provider, index: true, :null => false
  end
end
