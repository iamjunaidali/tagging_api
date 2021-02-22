Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
      resources :campaigns, only: [:create]
      resources :topics, only: [:create]
      resources :comments, only: [:create]
    end
  end
end
