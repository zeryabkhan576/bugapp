Rails.application.routes.draw do
  resources :articles
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"
  resources :projects
  resources :bugs
  resources :qas
  resources :developers
  resources :managers

end
