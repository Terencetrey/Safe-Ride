Rails.application.routes.draw do
  
  

  resources :trips
  resources :drivers
  resources :passengers
  resources :users, only: %i[destroy index show]



  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'
  post '/signup', to: 'users#create'
  get '/me', to: 'users#me'
# post 'auth/login', to: 'authentication#authenticate'
# post 'signup', to: 'users#create'
get '*path',
to: 'fallback#index',
constraints: ->(req) { !req.xhr? && req.format.html? }
end
