class RemoveCustFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :customer_id, :integer
  end
end
