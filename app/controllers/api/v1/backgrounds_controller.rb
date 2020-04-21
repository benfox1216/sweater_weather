class Api::V1::BackgroundsController < ApplicationController
  def index
    render json: BackgroundSerializer.new(Order.all)
  end
end
