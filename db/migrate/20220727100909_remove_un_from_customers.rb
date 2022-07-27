class RemoveUnFromCustomers < ActiveRecord::Migration[7.0]
  def change
    remove_column :customers, :user_id_id, :integer
    remove_column :customers, :users_id, :integer
    remove_column :customers, :user_id, :integer
  end
end
