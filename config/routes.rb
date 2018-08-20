Rails.application.routes.draw do
  devise_for :users
  root to: 'watches#research'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :watches do
    collection do
      get 'mine', to: "watches#mine"
    end
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:show, :index] do
    collection do
      get 'my_renting', to: "bookings#my_renting"
    end
    member do
      patch :accept
      patch :decline
    end
  end
end
