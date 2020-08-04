Rails.application.routes.draw do
  # VERB '/path', to: 'controller#action', as: :prefix
  # CRUD
  # See all restaurants
  get '/restaurants', to: 'restaurants#index'
  # Create a restaurant
  # just a page with a form on it
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # where does the form get sent?
  post '/restaurants', to: 'restaurants#create'
  # See details about one restaurant
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  # Update a restaurant
  get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  # where does the form get sent?
  patch '/restaurants/:id', to: 'restaurants#update'
  # Destroy a restaurant
  delete '/restaurants/:id', to: 'restaurants#destroy'
  # resources :restaurants
end


# form action="/restaurants" method="get"
