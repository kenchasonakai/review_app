Rails.application.routes.draw do
  resources :items, only: [:index]
  resources :reviews, only: [:new, :create]
end
