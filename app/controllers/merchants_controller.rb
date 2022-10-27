class MerchantsController < ApplicationController

  def index
    @merchants = RailsEngineFacade.merchants_poro
  end
  
  def show
    @merchants = RailsEngineFacade.merchants_poro
    @merchant = @merchants.select do |merchant|
      merchant.id == params[:id]
    end
  end
end
