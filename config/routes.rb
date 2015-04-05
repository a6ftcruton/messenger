Rails.application.routes.draw do

  root to: 'messages#index'

  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  get 'logout', to: 'session#destroy'

  get 'signup', to: 'users#new', as: 'signup'

  resources :users 
  resources :messages

end

