Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users


  resources :works

  resources :articles do
    resources :comments
  end  

  get 'home/index'
  root to: "home#index"
  resources :login

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
