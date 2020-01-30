require 'rails_helper'

RSpec.describe PhoneModel, type: :model do

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_most(100) }

    it { should validate_presence_of(:annual_price) }    
    it { should validate_numericality_of(:annual_price).is_less_than(100000) }
  end
end
