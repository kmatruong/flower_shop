Rails.application.routes.draw do
  devise_for :users
  root "static_pages#index"

  resources :categories, only: %i(index show)
  resources :products, only: %i(index show)
end
