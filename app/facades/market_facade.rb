class MarketFacade
  def all_markets
    service = MarketService.new
    data = service.all_markets[:data]
    @results = data.map do |market_data|
      Market.new(market_data)
    end
  end
end