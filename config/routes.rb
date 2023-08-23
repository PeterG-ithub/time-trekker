Rails.application.routes.draw do
  devise_for :users
  # root "users#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get '/home', to: 'static_pages#home'
  root 'static_pages#home'
  get '/app', to: 'apps#index'
end
