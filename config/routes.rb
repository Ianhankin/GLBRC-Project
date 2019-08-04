Rails.application.routes.draw do
  get 'sessions/new'

  get '/home', to: "pages#home"

  get '/login', to: "sessions#new"
  root 'sessions#new'
end
