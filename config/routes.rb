Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'restaurant#index'
  get 'restaurants' => 'restaurant#index', as: 'restaurant_index'
  get 'restaurant/new' => 'restaurant#new', as: 'new_restaurant'
  get 'restaurant/:id' => 'restaurant#show', as: 'restaurant'
  post 'restaurants' => 'restaurant#create'
  get 'restaurant/:id/edit' => 'restaurant#edit', as: 'edit_restaurant'
  patch 'restaurant/:id' => 'restaurant#update'
  delete 'restaurant/:id' => 'restaurant#destroy', as: 'delete_restaurant'


end
