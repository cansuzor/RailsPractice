Rails.application.routes.draw do
  root "articles#index" 
    #maps root route to index action of ArticlesController


  #get "/articles", to: "articles#index"
  #get "articles/:id", to: "articles#show" replaced by resources:articles

  resources :articles

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end