Rails.application.routes.draw do
  get "/home", to: 'home#index'
  get "/store", to: 'home#index'
  post "/store", to: 'home#store'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
