Rails.application.routes.draw do
  resources :post_attachments
  resources :posts
  get 'resumes/index'
  get 'resumes/new'
  get 'resumes/create'
  get 'resumes/destroy'

 get "home/about"
 resources :resumes, only: [:index, :new, :create, :destroy]
 root "resumes#index"
 

 get "/articles", to: "articles#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
