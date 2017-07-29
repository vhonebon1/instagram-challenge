Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get 'users/show'

resources :users

resources :posts

resources :comments

resources :likes

end
