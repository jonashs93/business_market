class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :customer, null: false
      t.references :phone_model, null: false
      t.string     :phone_imei, limit: 15, null: false
      t.decimal    :annual_price, precision: 7, scale: 2, null: false
      t.timestamps
    end
  end
end
