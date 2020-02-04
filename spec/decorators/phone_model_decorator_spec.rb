require 'rails_helper'

RSpec.describe PhoneModelDecorator, type: :decorator do

  subject { object.decorate }
  let(:object) { build(:phone_model) }

  it { expect(subject).to be_decorated_with(PhoneModelDecorator) }

  before do
    object.name = 'Produto X'
    object.annual_price = 15.30
  end

  describe '#full_name' do
    it { expect(subject.full_name).to eq('Produto X (R$ 15,30)')}
  end

  describe '#currency_annual_price' do
    it { expect(subject.currency_annual_price).to eq('R$ 15,30') }
  end
end
