Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root to: "arts#index"

  resources :bookings, only: ["index"]

  resources :arts, only: ["index", "show", "new", "create"] do
    resources :bookings, only: ["create"]
  end

  resources :bookings, only: ["index"]


  namespace :owner do
    resources :bookings, only: ["index"]
    patch "bookings/:id/confirm", to: "bookings#updateConfirm", as: "update_booking_confirm"
    patch "bookings/:id/decline", to: "bookings#updateDecline", as: "update_booking_decline"
    resources :arts, only: ["index"]
  end

  resources :users, only: ["show"]
end
