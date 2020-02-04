class PhoneModel < ApplicationRecord

  # --- Delegates ---

  delegate :full_name, to: :decorate, prefix: true, allow_nil: true

  # --- Validations ---

  validates :name, presence: true, length: { maximum: 100 }
  validates :annual_price, presence: true, numericality: { less_than: 100000 }
end
