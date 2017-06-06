Rails.application.routes.draw do
  get '/vehicles' => 'vehicles#index'
  post '/vehicles' => 'vehicles#create'
  get '/vehicles/:id' => 'vehicles#show'
  patch '/vehicles/:id' => 'vehicles#update'
  delete '/vehicles/:id' => 'vehicles#destroy'
end
