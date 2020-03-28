Rails.application.routes.draw do
  get 'positions/new'
  get 'positions/index'
  root to: 'pages#home'

  resources :votes, only: [:new, :create]
  resources :positions, only: [:new, :create, :index]

  get '/pages/thanks'
end
