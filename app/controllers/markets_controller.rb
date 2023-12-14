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

  def search
    facade = MarketFacade.new
    @results = facade.vendor_details(params[:id])
    @search_results = facade.find_markets(params[:name], params[:city], params[:state])
    redirect_to "/vendors/#{params[:id]}"
  end

  private
  def market_params
    params.require(:market).permit(:name, :city, :state)
  end
end