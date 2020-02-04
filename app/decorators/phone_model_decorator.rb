class PhoneModelDecorator < ApplicationDecorator

  def full_name
    "#{object.name} (#{currency_annual_price})"
  end

  def currency_annual_price
    h.number_to_currency(object.annual_price)
  end
end
