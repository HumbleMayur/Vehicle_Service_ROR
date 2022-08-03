class AddTotalToServiceHistories < ActiveRecord::Migration[7.0]
  def change
    add_column :service_histories, :total, :integer
  end
end
