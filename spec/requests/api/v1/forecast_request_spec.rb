require 'rails_helper'

RSpec.describe "Api::V1::Forecasts", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/forecast?location=denver,co"
      expect(response).to have_http_status(:success)
      expect(response.body.class).to eq(String)
    end
  end

end
