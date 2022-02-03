Rails.application.routes.draw do


  resources :alert_damages
  resources :damage_types
  resources :alerts
  resources :users
  # GET  to  /users : users#index


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
