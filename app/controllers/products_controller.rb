class ProductsController < ApplicationController
  before_action :authenticate_user
  
  def index
    if params[:term]
      @products = Product.where("name LIKE ?","%#{params[:term]}%")
    else
      @products = Product.all
    end
    render json: @products
  end


  def create
    @product = Product.new(params[:provider])
    @product.save
    render json: @product
  end
end
