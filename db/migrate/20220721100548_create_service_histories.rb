class CreateServiceHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :service_histories do |t|
      t.belongs_to :customer, null: false, foreign_key: true
      t.belongs_to :product, null: false, foreign_key: true
      t.date :startdate
      t.date :enddate
      t.string :status
      t.decimal :amount_paid
      t.decimal :amount_due

      t.timestamps
    end
  end
end
