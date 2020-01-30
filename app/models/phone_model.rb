class PhoneModel < ApplicationRecord

  # --- Validations ---

  validates :name, presence: true, length: { maximum: 100 }
  validates :annual_price, presence: true, numericality: { less_than: 100000 }
end
