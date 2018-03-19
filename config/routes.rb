Rails.application.routes.draw do
  get 'proverb/show'
  root to: 'proverb#show'
end
