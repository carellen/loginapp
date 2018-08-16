Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resources :user, only: :show
end
