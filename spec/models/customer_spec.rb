require 'rails_helper'

RSpec.describe Customer, type: :model do

  context 'associations' do
    it { should have_one(:order).dependent(:destroy) }
  end

  context 'nested attributes' do
    it { should accept_nested_attributes_for :order }
  end

  context 'validations' do
    it { should validate_length_of(:name).is_at_most(100) }

    it { should validate_presence_of(:cpf) }
    it { should validate_uniqueness_of(:cpf) }

    it { should validate_length_of(:email).is_at_most(100) }
    it { should validate_email_format_of(:email) }
  end
end
