class CreateUtilityProviders < ActiveRecord::Migration
  def change
    create_table :utility_providers do |t|
      t.string :name
      t.decimal :co2_coefficient
      t.boolean :active

      t.timestamps
    end
  end
end
