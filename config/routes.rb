Rails.application.routes.draw do
  root 'home#top'
  get 'about', to: 'home#about'
  get 'posts/new', to: 'posts#new'
  post 'posts/create', to: 'posts#create'
  get 'posts/index'
  get 'posts/:id', to: 'posts#show', as: :post
  get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
  post 'posts/:id/update', to:'posts#update', as: :update_post
  post 'posts/:id/destroy', to:'posts#destroy', as: :destroy_post
end
