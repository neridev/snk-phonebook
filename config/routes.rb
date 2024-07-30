Rails.application.routes.draw do
  resources :departments
  resources :sections

  # Defines the root path route ("/")
  root 'pages#home'

  get '/about', to: 'pages#about'
  #get '/search', to: 'pages#search'
  post '/search', to: 'pages#search'

  #get 'pages/home'
  #get 'pages/about'

  resources :contacts do
    collection { post :import }
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
