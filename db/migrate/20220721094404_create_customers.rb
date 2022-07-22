class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.date :DOB
      t.string :address
      t.string :vehicle_type
      t.string :vehicle_number

      t.timestamps
    end
  end
end
