Rails.application.routes.draw do
  get 'bookings/create'
  get 'bookings/destroy'
  get 'bookings/update'
  get 'bookings/index'
  get 'bookings/show'
  # get 'rides/index'
  # get 'rides/show'
  # get 'rides/new'
  # get 'rides/create'
  # get 'rides/edit'
  # get 'rides/update'
  # get 'rides/destroy'
  devise_for :users

  root to: "pages#home"
  resources :rides do
    resources :bookings, only: [:index, :show,:create, :update]
  end
  resources :bookings, only: [:destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
