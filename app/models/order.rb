class Order < ApplicationRecord

  # --- Callbacks ---

  before_validation :set_annual_price

  # --- Associations ---

  belongs_to :customer
  belongs_to :phone_model, required: false

  # --- Delegates ---

  delegate :annual_price, to: :phone_model, prefix: true, allow_nil: true

  # --- Validations ---

  validates :customer, :phone_model, :phone_imei, presence: true
  validates :phone_imei, length: { is: 15, allow_blank: true }
  validates :annual_price, presence: true, numericality: { less_than: 100000, allow_blank: true }
  validates :number_installments, presence: true, numericality: { less_than_or_equal_to: 12, allow_blank: true }

  protected

  def set_annual_price
    return if annual_price.present?
    self.annual_price = self.phone_model_annual_price
  end
end
