require 'rails_helper'

RSpec.describe Api::V1::CustomersController, type: :controller do

  describe 'POST #create' do
    before { post :create, params: params }
    let(:customer) { build(:customer) }
    let(:order) { customer.order }
    let(:phone_model) { create(:phone_model) }

    context 'when valid' do
      let(:params) do
        { customer: { name: customer.name, cpf: customer.cpf, email: customer.email,
                      order_attributes: { phone_model_id: phone_model.id, phone_imei: order.phone_imei,
                                          number_installments: order.number_installments } } }
      end

      it { expect(response).to have_http_status :created }
      it { expect(JSON.parse(response.body).keys.sort).to eq(Customer.column_names.sort) }
    end

    context 'when invalid' do
      let(:params) { { customer: { name: FFaker::Name.name } } }

      it { expect(response).to have_http_status :unprocessable_entity }
      it { expect(response.body).to have_json_type(Array).at_path('errors') }
    end

    context 'CustomerService#subscribe is called' do
      let(:params) { { customer: { name: FFaker::Name.name } } }

      it do
        expect_any_instance_of(Api::V1::CustomerService).to receive(:subscribe)
        post :create, params: params
      end
    end
  end
end
