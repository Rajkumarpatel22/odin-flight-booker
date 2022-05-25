Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :flights, only: [:new, :create, :index, :show]
  resources :bookings
  root "flights#index"
end
