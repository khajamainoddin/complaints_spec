Rails.application.routes.draw do
  

   root "complaints#index"
   resources :complaints

  resources :users

  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
