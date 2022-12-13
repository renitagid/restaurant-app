Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'restaurant#index'
  get 'restaurant/new' => 'restaurant#new', as: 'new_restaurant'
  get 'restaurant/:id' => 'restaurant#show', as: 'restaurant'
  post 'restaurants' => 'restaurant#create'
  
end
