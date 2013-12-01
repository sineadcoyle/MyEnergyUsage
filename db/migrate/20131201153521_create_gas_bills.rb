class CreateGasBills < ActiveRecord::Migration
  def change
    create_table :gas_bills do |t|
      t.datetime :start_date, :null => false
      t.datetime :end_date, :null => false
      t.integer :gas_start_reading, :null => false
      t.integer :gas_end_reading, :null => false
      t.decimal :net_cost
      t.decimal :gross_cost
      t.boolean :active, :null => false
      t.belongs_to :members, :null => false

      t.timestamps
    end
  end
end
