class StockQuotesController < ApplicationController
  def index
    if params[:symbols]
      @symbols = params[:symbols]
    else
      @symbols = "fb,aapl"
    end
    @stockArray = StockQuote.for(@symbols)
  end
end
