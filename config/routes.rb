Rails.application.routes.draw do

  

  resources :trips, only: [:destroy, :create, :index]
  resources :drivers, only: [:destroy, :index, :show, :create]
  resources :passengers, only: [:destroy, :index, :show, :create]
  resources :users, only: [:destroy, :index, :show, :create]
 

 #user route
 get '/me', to: 'users#show'
 delete '/me', to: 'users#destroy'
 post '/signup', to: 'users#create'

  #session routes for login / logout
post '/login', to: 'sessions#create'
delete '/logout', to: 'users#destroy'



  
post 'auth/login', to: 'authentication#authenticate'

get '*path',
to: 'fallback#index',
constraints: ->(req) { !req.xhr? && req.format.html? }
 
end
