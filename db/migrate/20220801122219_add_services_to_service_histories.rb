class AddServicesToServiceHistories < ActiveRecord::Migration[7.0]
  def change
    add_column :service_histories, :product, :string
  end
end
