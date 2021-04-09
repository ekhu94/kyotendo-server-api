Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      root 'welcome#index'
      resources :users, only: [:create, :index, :show]
      resources :forums
      resources :posts
      resources :videos
      resources :games
      resources :comments
      post '/login', to: 'auth#login'
      get '/auto_login', to: 'auth#auto_login' #* USE MAYBE?!
      get '/profile', to: 'users#profile'
    end
  end
end
