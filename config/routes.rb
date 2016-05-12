Rails.application.routes.draw do
  root "home#index"
  get '/property/:id', to: 'property#show'
  get '/lease/:id', to: 'lease#show'
end
