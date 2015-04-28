Rails.application.routes.draw do
  resources :comments
  resources :quotes, :feedbacks

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy', :as => :signout
  root "quotes#index"
end
