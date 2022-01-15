Rails.application.routes.draw do

  namespace :admin do
    resources :social_platforms
    resources :companies
    resources :industries
  end
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
