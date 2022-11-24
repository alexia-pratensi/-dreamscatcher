Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  get '/dashbord', to: "pages#dashbord"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :dreams, except: [:show]

  resources :dreams, only: [:show] do
    resources :reservations, only: [:new, :create]
  end
end
