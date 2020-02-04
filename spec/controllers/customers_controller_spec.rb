require 'rails_helper'

RSpec.describe CustomersController, type: :controller do

  describe 'GET #new' do
    before { get :new }

    it { expect(assigns(:customer).order).to be_a_new(Order) }
    it { expect(assigns(:customer)).to be_a_new(Customer) }
  end
end
