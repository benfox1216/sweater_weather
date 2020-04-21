class GoogleService
  def self.get_data(location)
    city_state = location.split
    response = Faraday.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{city_state[0]},+#{city_state[1]}&key=#{ENV['GOOGLE_API_KEY']}")
    JSON.parse(response.body, symbolize_names: true)[:results]
  end
end