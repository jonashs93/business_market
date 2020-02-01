FactoryBot.define do
  factory :customer do
    name { FFaker::Name.name }
    cpf { FFaker::IdentificationBR.pretty_cpf }
    email { FFaker::Internet.email }

    after(:build) do |customer|
      customer.order ||= FactoryBot.build(:order, customer: customer)
    end
  end
end
