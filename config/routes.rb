Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    resources :tweets, only: :index
    get 'search', to: 'tweets#search'
    post 'tweet', to: 'tweets#tweet'

  end
end
