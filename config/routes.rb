Rails.application.routes.draw do
  root to: 'pages#home'

  resources :votes, only: [:new, :create]

  get '/pages/thanks'
end
