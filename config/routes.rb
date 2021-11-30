Rails.application.routes.draw do
  root 'items#index'
  resources :items, only: [:index, :show], param: :item_code
  resources :reviews, only: [:new, :create]
end
