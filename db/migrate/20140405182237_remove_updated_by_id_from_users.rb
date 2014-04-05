class RemoveUpdatedByIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :updated_by_id, :int
  end
end
