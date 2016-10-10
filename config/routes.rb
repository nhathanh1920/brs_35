Rails.application.routes.draw do
  namespace :admin do
    root "static_pages#home"
    resources :categories, except: [:show]
    resources :books
  end
  root "static_pages#home"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  resources :users, except: [:destroy]
  resources :books, only: [:index, :show] do
    resources :reviews do
      resources :comments
    end
    resources :rates, except: [:destroy]
  end
end
