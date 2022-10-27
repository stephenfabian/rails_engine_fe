class Items
  attr_reader :id, :name, :description, :unit_price, :merchant_id

  def initialize(item)
    @id = item[:id]
    @name = item[:attributes][:name]
    @description = item[:attributes][:description]
    @unit_price = item[:attributes][:unit_price]
    @merchant_id = item[:attributes][:merchant_id]
  end
end