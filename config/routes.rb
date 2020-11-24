Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'messages', to: "conversations#index"; 
  root to: 'pages#home'
  devise_for :users
  resources :users
  resources :personal_messages, only: [:new, :create]
  resources :conversations, only: [:index, :show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
