class MerchantItemsController < ApplicationController

  def show
    @merchant_items = RailsEngineFacade.merchant_items(params[:merchant_id])
  end
end
