Rails.application.routes.draw do
  root "pages#home"
  
  devise_for :users
  resources :projects
  resources :bugs
  resources :users

end
