Rails.application.routes.draw do
  get 'preferences/edit'

  get 'sessions/new'

  get '/home', to: "pages#home"

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  root 'sessions#new'
end
