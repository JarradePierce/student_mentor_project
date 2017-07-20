Rails.application.routes.draw do
  root 'home#index'

  resources :students, only: [:create, :show, :new]

  get    '/login',   to: 'sessions#new', as: 'new_session'
  post   '/login',   to: 'sessions#create', as: 'create_session'
  delete '/logout',  to: 'sessions#destroy', as: 'delete_session'

end
