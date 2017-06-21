Rails.application.routes.draw do
  get '/' => 'pages#index'

  namespace :api do

    namespace :v1 do
      get '/vehicles' => 'vehicles#index'
      post '/vehicles' => 'vehicles#create'
      get '/vehicles/:id' => 'vehicles#show'
      patch '/vehicles/:id' => 'vehicles#update'
      delete '/vehicles/:id' => 'vehicles#destroy' 
    end
    namespace :v2 do
      get '/vehicles' => 'vehicles#index'
      post '/vehicles' => 'vehicles#create'
      get '/vehicles/:id' => 'vehicles#show'
      patch '/vehicles/:id' => 'vehicles#update'
      delete '/vehicles/:id' => 'vehicles#destroy' 
    end
  end
end
