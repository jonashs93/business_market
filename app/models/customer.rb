class Customer < ApplicationRecord

  # --- Associations ---

  has_one :order

  # --- Nested Attributes ---

  accepts_nested_attributes_for :order

  # --- Validations ---

  validates :name, length: { maximum: 100 }
  validates :cpf, presence: true, cpf: { allow_blank: true }, uniqueness: true
  validates :email, email_format: true, length: { maximum: 100 }
end
