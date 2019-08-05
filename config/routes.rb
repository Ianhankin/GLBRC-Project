Rails.application.routes.draw do
  get 'preferences/edit'
  get 'preferences/update'
  resources :preferences do
    collection do
      patch :sort
    end
  end

  get 'sessions/new'

  get '/home', to: "pages#home"

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  root 'sessions#new'
end
