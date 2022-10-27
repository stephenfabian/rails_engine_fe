class MerchantsController < ApplicationController

  def index
    @merchants = RailsEngineFacade.merchants_poro
  end
end
