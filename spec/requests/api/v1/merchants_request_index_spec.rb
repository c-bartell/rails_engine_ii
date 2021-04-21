require 'rails_helper'

context Api::V1::MerchantsController, type: :request do
  describe 'Fetch all merchants' do
    it 'Can fetch the first 20 merchants by default' do
      merchants = create_list(:merchant, 20)

      get '/api/v1/merchants'

      expect(response).to be_successful
      
      body = JSON.parse(response.body, symbolize_names: true)

      expect(body).to be_a Hash
      
      data = body[:data]

      expect(data).to be_an Array
      expect(data.length).to eq 20

      merchant1 = data.first

      expect(merchant1[:type]).to eq 'merchant'
    end
  end
end
