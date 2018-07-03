Rails.application.routes.draw do
  get 'proverb/show'
  root to: 'proverb#show'

  get 'auth/:provider/callback' => 'sessions#create'
  resources :user
end
