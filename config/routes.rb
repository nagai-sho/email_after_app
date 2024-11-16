Rails.application.routes.draw do
  devise_for :users
  root to: 'emails#new'
  resources :emails
end
