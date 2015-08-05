Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:new, :create, :show] do
    resources :journals, except: [:destroy]
    resources :meditations, except: [:destroy]
  end
  resources :questions, only: [:index, :create]
  get "/journal_download" => "journals#download", as: :download

  root 'users#show'
end
