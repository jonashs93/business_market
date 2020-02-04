require 'rails_helper'

RSpec.describe Api::V1::CustomerService do

  subject { Api::V1::CustomerService.new({}) }

  context 'attr_accessors' do
    it { is_expected.to respond_to(:object=) }
    it { is_expected.to respond_to(:object) }
  end

  describe '.new' do
    it { expect(subject.object).not_to eq(nil) }
    it { expect(subject.object.class).to be(Customer) }
  end

  describe '#subscribe' do
    before { subject.object = build(:customer) }

    it { expect{ subject.subscribe }.to change{ Customer.count }.by(1) }
    it { expect{ subject.subscribe }.to change{ Order.count }.by(1) }
  end
end
