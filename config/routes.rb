Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :pages
  resources :templates
  resources :categories, only: [:index, :post, :delete]
  resources :spreadsheets, only: [:new, :create, :update] do
    member do
      get :tabs
      get :range
      get :js
    end
  end    
  root "pages#index" 



  namespace :admin do
    resources :users, only: [:index, :destroy]
    root "users#index"
  end  



end
