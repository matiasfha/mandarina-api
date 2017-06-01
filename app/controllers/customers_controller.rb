class CustomersController < ApplicationController
  before_action :authenticate_user
  
  def index
    @customers = Customer.all
    render json: @customers
  end
  
end
