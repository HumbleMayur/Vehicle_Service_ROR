class CreateServiceHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :service_histories do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.references :cart, null: false, foreign_key: true
      t.date :startdate
      t.date :enddate
      t.string :status
      t.integer :amount_paid
      t.string :amount_due
      t.string :integer

      t.timestamps
    end
  end
end
