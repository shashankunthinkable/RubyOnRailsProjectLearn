Rails.application.routes.draw do
  resources :articles
  resources :blogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#Home'
  get 'about', to: 'pages#About'
  resources :categories, except: [:destroy]
end
