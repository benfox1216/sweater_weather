class Api::V1::ForecastController < ApplicationController
  def index
    data = GoogleService.get_data(params[:location])
    Geocode.create(latitude: data.first[:geometry][:location][:lat], longitude: data.first[:geometry][:location][:lng])
    geocode = render json: ForecastSerializer.new(Geocode.last)
    
    
  end
end
