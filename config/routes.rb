Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root to: "pages#home"

  get '/dashboard', to: 'pages#dashboard'

  resources :runs do
    resources :attendances, only: %i[index new create update destroy] do
      member do
        patch 'confirm', to: "attendances#confirm"
        patch 'decline', to: "attendances#decline"
      end
    end
  end
end
