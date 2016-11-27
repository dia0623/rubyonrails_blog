Rails.application.routes.draw do
  devise_for :users
  get 'blog/intro'
  get 'blog/new'
  get 'blog/list'
  post 'blog/write'
  get 'blog/show/:id', to: 'blog#show'
  get 'blog/destroy/:id', to: 'blog#destroy'
  get 'blog/edit/:id', to: 'blog#edit'
  post 'blog/update/:id', to: 'blog#update'
  root 'blog#intro'
end
