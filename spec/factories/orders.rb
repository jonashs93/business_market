FactoryBot.define do
  factory :order do
    customer
    phone_model
    phone_imei { FFaker.numerify('#' * 15) }
    annual_price { |order| order.phone_model_annual_price }
    number_installments { FFaker::Random.rand(1..12) }
  end
end
