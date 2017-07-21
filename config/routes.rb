Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  
  get '/students', to: 'students#index'
  get '/mentors', to: 'mentors#index'

  get '/students/login', to: 'students#login'
  get '/mentors/login', to: 'mentors#login'
  
  resources :mentors, only: [:show, :new, :create] do
  	resources :availabilities
  end

  

  resources :students, only: [:create, :show, :new]

  post   '/login',   to: 'sessions#create', as: 'create_session'
  delete '/logout',  to: 'sessions#destroy', as: 'delete_session'


  resources :appointments, only: [:create, :destroy]
end
