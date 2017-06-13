class ProvidersController < ApplicationController
  before_action :authenticate_user
  
  def index
    if params[:term]
      @providers = Provider.where("name LIKE ?","%#{params[:term]}%")
    else
      @providers = Provider.all
    end
    render json: @providers
  end

  def create
    @provider = Provider.new(params[:provider])
    @provider.save
    render json: @provider
  end
end
