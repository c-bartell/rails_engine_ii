class Api::V1::MerchantsController < ApplicationController
  def index
    merchants = Merchant.all.limit(20)

    render json: { data: merchants } 
  end
end
