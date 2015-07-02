Rails.application.routes.draw do

  resources :products do
    resources :reviews, only: [:show, :create, :destroy]
  end


  resources :users, only: [:new, :create, :index]
  resources :sessions, only: [:new, :create, :destroy]

end