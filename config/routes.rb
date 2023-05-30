Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/articles', to: 'articles#index'
  post 'articles', to: 'articles#create'
  get '/new', to: 'articles#new', as: :new_article
  get '/article/:id/edit', to: 'articles#edit', as: :edit_article
  delete 'article/:id', to: 'articles#destroy'
  get '/article/:id', to: 'articles#show', as: :article
  patch '/article/:id', to: 'articles#update'
end
