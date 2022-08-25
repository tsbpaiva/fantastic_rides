Rails.application.routes.draw do
  # get 'profile/index'
  # get 'profile/show'
  # get 'profile/update'

  # get 'bookings/destroy'
  # get 'bookings/update'
  # get 'bookings/index'
  # get 'bookings/show'
  # get 'rides/index'
  # get 'rides/show'
  # get 'rides/new'
  # get 'rides/create'
  # get 'rides/edit'
  # get 'rides/update'
  # get 'rides/destroy'
  devise_for :users

  root to: "pages#home"
  get 'profile', to:"profile#index"
  get 'profile/:ride_id/bookings', to:"profile#show", as: :profile_ride_bookings
  resources :rides do
    resources :bookings, only: [:index, :create, :update]
  end
  resources :bookings, only: [:destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
