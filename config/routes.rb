Rails.application.routes.draw do
  resources :microsofts
  root 'users#index'
  resources :users
end
