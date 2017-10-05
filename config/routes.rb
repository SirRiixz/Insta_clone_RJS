Rails.application.routes.draw do
  resources :photos
  # get 'landing/index'
  root "home#landing"
  devise_for :users

  "landing#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :photos, only: [:new, :create, :index, :edit, :update]

  root 'photos#index'

end
