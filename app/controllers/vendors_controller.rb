class VendorsController < ApplicationController
  def show
    facade = MarketFacade.new
    @results = facade.vendor_details(params[:id])
  end
end