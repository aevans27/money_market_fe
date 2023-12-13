class MarketsController < ApplicationController
  def index
    facade = MarketFacade.new
    @results = facade.all_markets
  end

  def show

  end
end