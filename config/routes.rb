Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#index'

  resources :user_sessions, only: %i[new create destroy]
  resources :pages, only: :index

  get 'log_in', to: redirect('/user_sessions/new')
  get 'sign_up', to: redirect('/users/new')
  delete 'log_out', to: 'user_sessions#destroy'
end
