Rails.application.routes.draw do
  post 'signin', to: 'sessions#signin'
  resources :users, only: [:index, :create]
  resources :todos
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
