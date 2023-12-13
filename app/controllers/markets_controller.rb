class MarketsController < ApplicationController
  def index
    facade = MarketFacade.new
    @results = facade.all_markets
  end

  def show
    facade = MarketFacade.new
    @market_results = facade.market_details(params[:id])
    @vendor_results = facade.get_market_vendors(params[:id])
  end
end