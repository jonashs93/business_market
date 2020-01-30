class AddAnnualPriceToPhoneModels < ActiveRecord::Migration[6.0]
  def change
    add_column :phone_models, :annual_price, :decimal, precision: 7, scale: 2, null: false
  end
end
