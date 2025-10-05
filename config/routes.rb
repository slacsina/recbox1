Rails.application.routes.draw do
  #get "search/index"
  get '/admin', to: 'home#aindex'
  get '/userhome', to: 'home#uindex'
  get '/your-recipes', to: 'home#urecipes'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'search', to: 'search#index'
  resources :recipe_ingredients
  resources :ingredients
  resources :recipes
  resources :users
  #get "about/index"
  #get "home/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  root 'home#index'
  get '/about', to: 'about#index'
end
