Rails.application.routes.draw do
  #users
  get "/signup", to: "users#new"
  get "/profile", to: "users#show"
  resources :users 

  #sessions
  get "/login", to: "sessins#new"
  get "/logout", to: "sessions#destroy"

  #recipe
  resources :recipes

  get 'users/new'

end


#   signup GET    /signup(.:format)         users#new
#     login GET    /login(.:format)          sessions#new
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user GET    /users/:id(.:format)      users#show
#           PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#           DELETE /users/:id(.:format)      users#destroy