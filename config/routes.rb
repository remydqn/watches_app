Rails.application.routes.draw do
  devise_for :users
  root to: 'watches#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :watches, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index, :show] do
    member do
      patch 'accept'
      patch 'decline'
    end
  end
end
