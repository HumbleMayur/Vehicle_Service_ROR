class RemoveIntegerFromServiceHistories < ActiveRecord::Migration[7.0]
  def change
    remove_column :service_histories, :integer, :string
  end
end
