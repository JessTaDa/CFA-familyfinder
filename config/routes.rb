Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/profile'

  get 'pages/person'

  root 'pages#home'

  resources :people
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
