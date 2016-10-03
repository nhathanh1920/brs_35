Rails.application.routes.draw do
  namespace :admin do
    root "static_pages#home"
  end
  root "static_pages#home"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
