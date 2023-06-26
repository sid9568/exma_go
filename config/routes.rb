Rails.application.routes.draw do
  root "exam/home#index"
  namespace :exam do
    get 'home/index'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
