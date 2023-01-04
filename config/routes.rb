Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'restaurants#index'

  get 'index', to: 'restaurants#index'
  get 'index2', to: 'restaurants#index2'
  get 'index3', to: 'restaurants#index3'
end
