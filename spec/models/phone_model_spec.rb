require 'rails_helper'

RSpec.describe PhoneModel, type: :model do

  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_most(100) }

    it { is_expected.to validate_presence_of(:annual_price) }
    it { is_expected.to validate_numericality_of(:annual_price).is_less_than(100000) }
  end
end
