Rails.application.routes.draw do
  root 'home#index'

  get '/sessions/new', to: 'sessions#create', as: 'session_create'

  resources :students

end
