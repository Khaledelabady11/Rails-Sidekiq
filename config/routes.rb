Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  get 'user/create_random'
  get 'user/destroy_all'
  root to: 'user#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
