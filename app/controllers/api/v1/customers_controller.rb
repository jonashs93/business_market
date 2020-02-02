module Api
  module V1
    class CustomersController < ApplicationController

      skip_before_action :verify_authenticity_token

      def create
        customer_service = CustomerService.new(customer_params)

        if customer_service.subscribe
          render json: customer_service.object, status: :created
        else
          render json: { errors: customer_service.object.errors.messages },
                 status: :unprocessable_entity
        end
      end

      private

      def customer_params
        params.require(:customer)
              .permit(:name, :cpf, :email,
                      order_attributes: [:phone_model_id, :phone_imei, :number_installments])
      end
    end
  end
end
