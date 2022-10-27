require 'json'

class RailsEngineService

  def self.conn
    Faraday.new(url: 'http://localhost:3000/')
  end

  def self.parse(api_data)
    JSON.parse(api_data.body, symbolize_names: true)
  end

  def self.merchants_index
    response = conn.get('/api/v1/merchants')
    parse(response)
  end

  def self.merchant_items_request(merchant_id)
    response = conn.get("/api/v1/merchants/#{merchant_id}/items")
    parse(response)
  end
end