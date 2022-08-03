class RemoveProductFromServiceHistories < ActiveRecord::Migration[7.0]
  def change
    remove_column :service_histories, :product_id, :string
  end
end
