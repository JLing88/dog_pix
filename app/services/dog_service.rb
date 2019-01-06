class DogService
  def get_doggies
    get_json
  end

  private

  def get_json
    JSON.parse(conn.get.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://dog.ceo/api/breeds/image/random/50') do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end
end