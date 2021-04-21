Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Merchant resources
  get 'api/v1/merchants', to: 'api/v1/merchants#index'
end
