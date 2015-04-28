Rails.application.routes.draw do
  resources :quotes

  get '/auth/:provider/callback', to: 'sessions#create'

  root "quotes#index"
end
