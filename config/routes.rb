Rails.application.routes.draw do
  get 'blog/intro'
  root 'blog#list'
  get 'blog/write'
  post 'blog/create'
  get 'blog/:id', to: 'blog#show'
  get 'login', to: 'blog#login'
end
