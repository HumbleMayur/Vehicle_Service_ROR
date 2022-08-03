class AddProductsToServiceHistories < ActiveRecord::Migration[7.0]
  def change
    add_reference :service_histories, :product, null: false, foreign_key: true
  end
end
