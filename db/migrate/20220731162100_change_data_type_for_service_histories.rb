class ChangeDataTypeForServiceHistories < ActiveRecord::Migration[7.0]
  def change
    change_column :service_histories, :amount_due, :integer
  end
end
