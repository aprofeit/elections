Rails.application.routes.draw do
  root to: 'votes#new'

  resources :votes, only: [:new, :create]

  get '/pages/thanks'
end
