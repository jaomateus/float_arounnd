Rails.application.routes.draw do
  devise_for :users
  root to: "floaties#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :floaties, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:index, :new, :create]
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
