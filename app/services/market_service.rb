class MarketService
  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def all_markets
    get_url('http://localhost:3000/api/v0/markets')
  end

  def vendor_details(id)
    get_url("http://localhost:3000/api/v0/vendors/#{id}")
  end

  def market_details(id)
    get_url("http://localhost:3000/api/v0/markets/#{id}")
  end

  def get_market_vendors(id)
    get_url("http://localhost:3000/api/v0/markets/#{id}/vendors")
  end

  def find_markets(name, city, state)
    get_url("http://localhost:3000/api/v0/markets/search?state=#{state}&name=#{name}&city=#{city}")
  end

  # def movie_reviews(id)
  #   get_url("/3/movie/#{id}/reviews")
  # end

  def conn
    Faraday.new(url: "http://localhost:3000/api/v0") do |faraday|
      # faraday.params['api_key'] = Rails.application.credentials.tmdb[:key]
    end
  end
end