class CreateElectricityBills < ActiveRecord::Migration
  def change
    create_table :electricity_bills do |t|
      t.datetime :start_date, :null => false
      t.datetime :end_date, :null => false
      t.decimal :electricity_day_consumption, :null => false
      t.decimal :electricity_night_consumption, :null => false
      t.decimal :day_cost
      t.decimal :night_cost
      t.decimal :gross_cost
      t.boolean :active, :null => false
      t.belongs_to :members, index: true, :null => false

      t.timestamps
    end
  end
end
