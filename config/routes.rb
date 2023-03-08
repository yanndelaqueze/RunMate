Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root to: "pages#home"

  get '/dashboard', to: 'pages#dashboard'

  devise_scope :user do
    get '/users/profile', to: 'users/sessions#show', as: 'user_profile'
    get '/users/:id/edit', to: 'users/sessions#edit', as: 'edit_user'
    patch '/users/:id/edit', to: 'users/sessions#update', as: 'update_user'
  end

  resources :runs do
    resources :attendances, only: %i[new create]
  end

  resources :attendances, only: %i[index show update destroy] do
    member do
      patch 'confirm', to: "attendances#confirm"
      patch 'decline', to: "attendances#decline"
    end
  end
end
