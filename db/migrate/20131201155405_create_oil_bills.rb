class CreateOilBills < ActiveRecord::Migration
  def change
    create_table :oil_bills do |t|
      t.datetime :start_date, :null => false
      t.datetime :end_date, :null => false
      t.decimal :volume, :null => false
      t.decimal :net_cost
      t.decimal :gross_cost
      t.belongs_to :members, index: true, :null => false

      t.timestamps
    end
  end
end
