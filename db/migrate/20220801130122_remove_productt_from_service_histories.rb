class RemoveProducttFromServiceHistories < ActiveRecord::Migration[7.0]
  def change
    remove_column :service_histories, :products_id, :integer
    remove_column :service_histories, :product, :string
  end
end
