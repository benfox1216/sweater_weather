class OpenWeatherService
  def self.get_data(latitude, longitude)
    response = Faraday.get("https://api.openweathermap.org/data/2.5/onecall?lat=#{latitude}&lon=#{longitude}&appid=#{ENV['OPEN_WEATHER_KEY']}")
    JSON.parse(response.body, symbolize_names: true)
  end
end