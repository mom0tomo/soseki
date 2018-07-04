Rails.application.routes.draw do
  root 'home#index'

  # omniauth
  get 'auth/:provider/callback' => 'sessions#create'

  resources :users, controller: :users, only: :show do
    resources :proverbs, controller: :proverbs, only: [:index, :show]
  end
end
