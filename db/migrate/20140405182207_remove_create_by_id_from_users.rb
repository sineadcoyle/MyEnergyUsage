class RemoveCreateByIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :created_by_id, :int
  end
end
