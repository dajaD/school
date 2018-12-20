Rails.application.routes.draw do
  #get 'posts/index'
  resources :posts
  #makes localhost3000/posts the homepage (goes into posts_controller and makes index the app root)
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
