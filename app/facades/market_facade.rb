class MarketFacade
  def all_markets
    service = MarketService.new
    data = service.all_markets[:data]
    @results = data.map do |market_data|
      Market.new(market_data)
    end
  end

  def market_details(id)
    service = MarketService.new
    Market.new(service.market_details(id)[:data])
  end

  def get_market_vendors(id)
    service = MarketService.new
    data = service.get_market_vendors(id)[:data]
    @vendor_results = data.map do |vendor_data|
      Vendor.new(vendor_data)
    end
  end
end