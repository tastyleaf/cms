Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :pages
  root "pages#index" 



  namespace :admin do
    resources :users, only: [:index, :destroy]
    resources :templates 
    resources :categories
    root "users#index"
  end  



end
