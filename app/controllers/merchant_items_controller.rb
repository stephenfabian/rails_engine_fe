class MerchantItemsController < ApplicationController

  def index
    @merchants = RailsEngineFacade.merchants_poro
    @merchant = @merchants.find do |merchant|
      merchant.id == params[:merchant_id]
    end
    @merchant_items = RailsEngineFacade.merchant_items(params[:merchant_id])
  end
end
