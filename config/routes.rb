Rails.application.routes.draw do
  resources :articles
  resources :blogs, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#Home'
  get 'about', to: 'pages#About'
end
