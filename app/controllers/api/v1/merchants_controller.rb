class Api::V1::MerchantsController < ApplicationController
  def index
    render json: { data: [] } 
  end
end
