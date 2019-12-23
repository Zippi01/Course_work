Rails.application.routes.draw do
  resources :institutions
  resources :cities
  resources :restaurants
  root 'restaurants#index', as: 'home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
