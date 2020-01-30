require 'rails_helper'

RSpec.describe Customer, type: :model do

  context 'validations' do
    it { should validate_length_of(:name).is_at_most(100) }

    it { should validate_presence_of(:cpf) }
    it { should validate_uniqueness_of(:cpf) }
    it { should validate_length_of(:cpf).is_equal_to(14) }

    it { should validate_length_of(:email).is_at_most(100) }
    it { should validate_email_format_of(:email) }
  end
end
