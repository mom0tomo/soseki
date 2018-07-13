Rails.application.routes.draw do
  root 'home#index'

  resources :users, controller: :users, except: :index do
    resources :proverbs, controller: :proverbs, only: [:index]
  end
end
