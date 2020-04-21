class Forecast < ApplicationRecord
  def latitude
    binding.pry
    [:data][:attributes][:latitude]
  end
  
  def longitude
    [:data][:attributes][:longitude]
  end
end
