Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root to: "pages#home"

  resources :runs do
    resources :attendances, only: %i[index create edit destroy]
  end

  get '/dashboard', to: 'pages#dashboard'
end
