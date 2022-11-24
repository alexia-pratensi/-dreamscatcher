Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  get '/dashbord', to: "pages#dashbord"
  delete "dreams/:id", to: "pages#destroy"
  # root "articles#index"
  resources :dreams, except: [:show]

  resources :dreams, only: [:show] do
    resources :reservations, only: [:new, :create]
  end
end
