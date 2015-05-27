Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show] do
    resources :questions, only: [:new, :create]
  end

  root 'users#show'
end
