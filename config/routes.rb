Rails.application.routes.draw do
  # get 'blogs/new'
  # get '/blogs' => 'blogs#index'
  Rails.application.routes.draw do
  resources :blogs
end
 end
