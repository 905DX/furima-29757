Rails.application.routes.draw do
  devise_for :users
  resources :items, only: [:index, :create, :new, :show, :edit, :update]
  resources :users, only: :new
  root to: "items#index"
end
