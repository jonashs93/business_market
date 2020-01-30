class PhoneModel < ApplicationRecord

  # --- Validations ---

  validates :name, presence: true, length: { maximum: 100 }
end
