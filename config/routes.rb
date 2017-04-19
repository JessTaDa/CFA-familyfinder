Rails.application.routes.draw do

# redirects signed in user to user profile
  authenticated :user do
    root 'pages#profile', as: :authenticated_person
  end

  get 'pages/home'

  get 'pages/profile'

  get 'pages/person'

  root 'pages#home'

  resources :people
  # resources :registrations

  devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#get '/user/new' => 'persons#new', as: 'new_person'

end
