class CustomersController < ApplicationController

  def new
    @customer = Customer.new
    @customer.build_order
  end
end
