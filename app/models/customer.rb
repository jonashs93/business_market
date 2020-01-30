class Customer < ApplicationRecord

  # --- Validations ---

  validates :name, length: { maximum: 100 }
  validates :cpf, presence: true, uniqueness: true, length: { is: 14 }
  validates :email, email_format: true, length: { maximum: 100 }
end
