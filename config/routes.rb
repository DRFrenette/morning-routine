Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show] do
    resources :journals, except: [:destroy]
  end
  resources :questions, only: [:index, :create]
  get "/journal_download" => "journals#download", as: :download

  root 'users#show'
end
