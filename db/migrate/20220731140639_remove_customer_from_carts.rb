class RemoveCustomerFromCarts < ActiveRecord::Migration[7.0]
  def change
    remove_column :carts, :customers_id, :integer
  end
end
