Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'dogs#index'
  resources :dogs, only: [:index]
end
