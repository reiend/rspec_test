# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # this sets the root
  root 'articles#index'
  # resources :categories

  # resource :articles # creates 7 basic routes

  # resource :articles

  get '/articles', to: 'articles#index', as: 'home_article'

  # create
  get '/articles/new', to: 'articles#new', as: 'new_article'
  post '/articles/show', to: 'articles#create', as: 'create_article'

  # show
  get '/articles/show', to: 'articles#show', as: 'show_article'
  get '/articles/:id', to: 'articles#focus', as: 'focus_article'

  # categories
  get '/categories/new', to: 'categories#new', as: 'new_category'
  get '/categories/:id', to: 'categories#show', as: 'category'
  post '/categories', to: 'categories#create', as: 'create_category'
  get '/categories/:id/edit', to: 'categories#edit', as: 'edit_category'

  # Defines the root path route ("/")
  # root "articles#index"
end
