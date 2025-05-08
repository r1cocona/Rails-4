Rails.application.routes.draw do
  root "hello_world#index"
  # 勉強のためのCRUD
  # resources :users 
  get    "/users",          to: "users#index",   as: "users"
  get    "/users/new",      to: "users#new",     as: "new_user"
  post   "/users",          to: "users#create"
  get    "/users/:id",      to: "users#show",    as: "user"
  get    "/users/:id/edit", to: "users#edit",    as: "edit_user"
  patch  "/users/:id",      to: "users#update"
  put    "/users/:id",      to: "users#update"
  delete "/users/:id",      to: "users#destroy"
end
