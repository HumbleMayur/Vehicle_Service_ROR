class RemoveCustomerFromOrderables < ActiveRecord::Migration[7.0]
  def change
    remove_column :orderables, :customer_id, :integer
  end
end
