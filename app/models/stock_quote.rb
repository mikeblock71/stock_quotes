class StockQuote
    include HTTParty

    self.base_uri 'https://cloud.iexapis.com/stable'
    self.default_params token: "pk_a75d573a041f41fb8b804a27a0704628"

    def self.for stockSymbols
        @stockArray = Array.new
        symbolArray = stockSymbols.split(",")
        symbolArray.each do |symbol|
            @stockArray.append(get('/stock/'+symbol+'/quote'))
        end
        return @stockArray
    end

end