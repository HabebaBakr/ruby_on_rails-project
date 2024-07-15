Rails.application.routes.draw do
  # get 'admins/index'
  # get 'admins/show'
  # get 'admins/new'
  # get 'admins/edit'
  # get 'admins/destroy'
  resources :admins
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
