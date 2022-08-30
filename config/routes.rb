Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :friends
  get 'test', to: "pages#test"
end
