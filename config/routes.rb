Rails.application.routes.draw do
  get 'courses/index'
  get 'courses/show'
  root "static_pages#home"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users, only: %i(create show index)
  resources :courses
end
