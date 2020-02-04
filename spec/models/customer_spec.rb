require 'rails_helper'

RSpec.describe Customer, type: :model do

  context 'associations' do
    it { is_expected.to have_one(:order).dependent(:destroy) }
  end

  context 'nested attributes' do
    it { is_expected.to accept_nested_attributes_for :order }
  end

  context 'validations' do
    it { is_expected.to validate_length_of(:name).is_at_most(100) }

    it { is_expected.to validate_presence_of(:cpf) }
    it { is_expected.to validate_uniqueness_of(:cpf) }

    it { is_expected.to validate_length_of(:email).is_at_most(100) }
    it { is_expected.to validate_email_format_of(:email) }
  end
end
