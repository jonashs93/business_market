require 'rails_helper'

RSpec.describe Order, type: :model do

  context 'associations' do
    it { is_expected.to belong_to(:customer) }
    it { is_expected.to belong_to(:phone_model).required(false) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:customer) }

    it { is_expected.to validate_presence_of(:phone_model) }

    it { is_expected.to validate_length_of(:phone_imei).is_equal_to(15) }

    it { is_expected.to validate_presence_of(:annual_price) }
    it { is_expected.to validate_numericality_of(:annual_price).is_less_than(100000) }

    it { is_expected.to validate_presence_of(:number_installments) }
    it { is_expected.to validate_numericality_of(:number_installments).is_less_than_or_equal_to(12) }
  end
end
