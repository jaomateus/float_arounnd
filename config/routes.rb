Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :floaties, only: [:index, :show, :new, :create] do
    resources :reviews, only: :create
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index]

  get "floatiesmap", to: "pages#map_all"
end
