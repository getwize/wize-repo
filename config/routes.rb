Rails.application.routes.draw do
  resources :members
  devise_for :users

  resource :subscription
  resource :card

  get 'owner' => "members#owner"

  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
