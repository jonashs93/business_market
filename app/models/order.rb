class Order < ApplicationRecord

  # --- Associations ---

  belongs_to :customer
  belongs_to :phone_model

  # --- Delegates ---

  delegate :annual_price, to: :phone_model, prefix: true

  # --- Validations ---

  validates :customer, :phone_model, :phone_imei, presence: true
  validates :phone_imei, length: { is: 15 }
  validates :annual_price, presence: true, numericality: { less_than: 100000 }
  validates :number_installments, presence: true, numericality: { less_than_or_equal_to: 12 }
end
