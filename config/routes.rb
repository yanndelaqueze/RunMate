Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root to: "pages#home"

  get '/dashboard', to: 'pages#dashboard'

  get '/chatrooms', to: 'pages#chatrooms'

  devise_scope :user do
    get '/users/profile', to: 'users/sessions#show', as: 'user_profile'
    get '/users/:id/edit', to: 'users/sessions#edit', as: 'edit_user'
    patch '/users/:id/edit', to: 'users/sessions#update', as: 'update_user'
    get '/users/:id/profile', to: 'users/sessions#show', as: 'profile'
  end

  get 'runs/map', to: "runs#map", as: :map

  resources :runs do
    resources :attendances, only: %i[new create]
    resources :messages, only: :create
    member do
      get 'chatroom', to: "runs#chatroom"
    end
  end

  resources :attendances, only: %i[index show update destroy] do
    resources :reviews, only: %i[new create] # routes Reviews
    member do
      patch 'confirm', to: "attendances#confirm"
      patch 'decline', to: "attendances#decline"
    end
  end
end
