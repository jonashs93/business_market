class Order < ApplicationRecord

  # --- Associations ---

  belongs_to :customer

  # --- Validations ---

  validates :customer, :phone_model, :phone_imei, :annual_price, presence: true
  validates :annual_price, presence: true, numericality: { less_than: 100000 }
end



  t.references :customer, null: false
  t.references :phone_model, null: false
  t.string     :phone_imei, limit: 15, null: false
  t.decimal    :annual_price, precision: 7, scale: 2, null: false
