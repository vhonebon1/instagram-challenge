Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


get 'users/create'

get 'users/show'

get 'posts/new'

resources :users

resources :posts
resources :post

resources :comments
end
