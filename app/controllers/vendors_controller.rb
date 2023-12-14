class VendorsController < ApplicationController
  def show
    if params[:name].present? || params[:city].present? || params[:state].present?
      facade = MarketFacade.new
      @results = facade.vendor_details(params[:id])
      @search_results = facade.find_markets(params[:name], params[:city], params[:state])
    else
      facade = MarketFacade.new
      @results = facade.vendor_details(params[:id])
    end
  end
end