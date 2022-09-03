Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :friends

  get "/about", to: "pages#about_us"
end
