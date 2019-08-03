Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/login'

  root 'application#hello'
end
