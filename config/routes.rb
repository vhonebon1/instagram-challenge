Rails.application.routes.draw do

  get 'users/show'

  resources :users

  resources :posts

  resources :comments

  resources :likes

end
