FactoryBot.define do
  factory :phone_model do
    name { FFaker::Product.product_name }
    annual_price { FFaker.numerify('###.##') }
  end
end
