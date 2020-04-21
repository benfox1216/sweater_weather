class Api::V1::ForecastController < ApplicationController
  def index
    data = GoogleService.get_data(params[:location])
    Geocode.create(latitude: data.first[:geometry][:location][:lat], longitude: data.first[:geometry][:location][:lng])
    geocode = ForecastSerializer.new(Geocode.last).serializable_hash
    
    latitude = geocode[:data][:attributes][:latitude]
    longitude = geocode[:data][:attributes][:longitude]
    
    render json: OpenWeatherService.get_data(latitude, longitude)
  end
end
