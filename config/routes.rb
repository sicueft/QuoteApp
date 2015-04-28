Rails.application.routes.draw do
  resources :quotes

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy', :as => :signout
  root "quotes#index"
end
