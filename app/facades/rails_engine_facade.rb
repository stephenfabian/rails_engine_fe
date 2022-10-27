class RailsEngineFacade < RailsEngineService

  def self.merchants_poro
    merchants_index[:data].map do |merchant|
      Merchants.new(merchant)
    end
  end

  def self.merchant_items(merchant_id)
    merchant_items_request(merchant_id)[:data].map do |item|
      Items.new(item)
    end
  end
end