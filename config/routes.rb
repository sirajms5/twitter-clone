Rails.application.routes.draw do
  resources :replies
  resources :tweets
  resources :profiles do 
    resource :relationships, only: [:create]
  end  
  resource :relationships, only: [:destroy]
  
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  get 'home/about'
  get 'home/settings'
  get 'home/terms_of_services'
  get 'home/privacy_policy'
  root 'tweets#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
