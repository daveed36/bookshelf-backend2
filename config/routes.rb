# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#   root 'welcome#index'

  
#   post '/google', to: 'api#google'
#   post '/login', to: 'login#login'
 

#   resources :users, only: [:create, :show]
#   resources :collections, only: [:create]
#   resources :books, only: [:create, :update, :destroy]
# end
Rails.application.routes.draw do
  resource :users, only: [:create]
  post '/google', to: 'api#google'
  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"
  get "/user_is_authed", to: "auth#user_is_authed"
end

