Rails.application.routes.draw do
  resources :posts
  resources :friends
  resources :profiles
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  get 'home/about'
  root 'posts#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
