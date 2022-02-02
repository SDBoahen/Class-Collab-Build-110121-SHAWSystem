Rails.application.routes.draw do


  resources :alert_damages
  resources :damage_types
  resources :alerts
  resources :users

  
  resources :shaws
  resources :woobahs
  resources :restaurant_pizzas
  resources :restaurants
  resources :pizzas
  resources :woobly_snacks
  resources :snacks
  resources :wooblies
  
  
  
  
  


  
  
  
  
  
  
  
  
  
  
  
  # resources :pleases
  
  
  resources :campers
  # GET   : /campers      : index
  # GET   : /campers/:id  :  show
  # POST  : /campers      : create  x  NEW 
  # PATCH : /campers/:id  : update  x  EDIT 


  resources :activities
  # GET      : /activities          : index
  # DELETE   : /activities/:id      : destroy


  resources :signups
  # POST  : /signups      : create  x  NEW 

  
  




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
