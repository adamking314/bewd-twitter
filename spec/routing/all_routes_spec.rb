Rails.application.routes.draw do
  # Root path
  root to: 'homepage#index'

  # Feeds route
  get '/feeds', to: 'feeds#index'

  # User-related routes
  post '/users', to: 'users#create'

  # Session-related routes
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'
  get '/authenticated', to: 'sessions#authenticated'

  # Tweet-related routes
  post '/tweets', to: 'tweets#create'
  get '/tweets', to: 'tweets#index'
  delete '/tweets/:id', to: 'tweets#destroy', as: 'delete_tweet'
  get '/users/:username/tweets', to: 'tweets#index_by_user', as: 'user_tweets'

  # Wildcard route for client-side routing
  get '/*path', to: 'homepage#index'
end
