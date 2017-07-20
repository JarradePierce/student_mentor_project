Rails.application.routes.draw do
  root 'home#index'
  get '/students', to: 'students#index'
  get '/mentors', to: 'mentors#index'

  get '/students/login', to: 'students#login'
  get '/mentors/login', to: 'mentors#login'

  resources :students, only: [:create, :show, :new]

  resources :mentors, only: [:create, :show, :new]


  post   '/login',   to: 'sessions#create', as: 'create_session'
  delete '/logout',  to: 'sessions#destroy', as: 'delete_session'


  resources :appointments, only: [:create, :destroy]

end
