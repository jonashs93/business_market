require 'rails_helper'

RSpec.describe Order, type: :model do

  context 'associations' do
    it { should belong_to(:customer) }
    it { should belong_to(:phone_model) }
  end

  context 'validations' do
    it { should validate_presence_of(:customer) }

    it { should validate_presence_of(:phone_model) }

    it { should validate_length_of(:phone_imei).is_equal_to(15) }

    it { should validate_presence_of(:annual_price) }
    it { should validate_numericality_of(:annual_price).is_less_than(100000) }

    it { should validate_presence_of(:number_installments) }
    it { should validate_numericality_of(:number_installments).is_less_than_or_equal_to(12) }
  end
end
