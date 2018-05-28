Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: "home#index"

get '/article/new', to: 'articles#new'
post '/article/create', to: 'articles#create'
get '/article/:id', to: 'articles#show', as:'new_article'
get '/articles/', to: 'articles#index', as: 'articles'
get '/article/:id/edit', to: 'articles#edit', as: 'article_edit'
patch '/article/:id/', to: 'articles#update'
put '/article/:id/', to: 'articles#update'
delete '/article/:id/', to: 'articles#destroy', as: 'article_delete'



post '/article/:id/post', to: 'posts#create', as: 'post_create'
get  '/article/:id/post/edit', to: 'posts#edit', as: 'edit_post'

post 'article/:id/image', to: 'images#create'

end
