class Merchants 
  attr_reader :name, :id
  
  def initialize(merchant_hash)
    @id = merchant_hash[:id]
    @name = merchant_hash[:attributes][:name]
  end
end