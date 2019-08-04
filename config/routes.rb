Rails.application.routes.draw do
  get 'preferences/edit'
  get 'preferences/update'

  get 'sessions/new'

  get '/home', to: "pages#home"

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  root 'sessions#new'
end
