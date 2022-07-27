class AddCustToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :phone, :string
    add_column :users, :DOB, :date
    add_column :users, :address, :string
    add_column :users, :vehicle_type, :string
    add_column :users, :vehicle_number, :string
  end
end
