Rails.application.routes.draw do
  devise_for :users
  root to: "floaties#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :floaties, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index]

  # Defines the root path route ("/")
  # root "articles#index"
end
