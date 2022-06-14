Rails.application.routes.draw do
  get 'orders/bought'
  get 'orders/sold'
  root 'pages#home'
  devise_for :users
  resources :listings
  
  post "listings/:id/order", to: "listings#place_order", as: "place_order"
 
  get 'orders/success'
  
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
