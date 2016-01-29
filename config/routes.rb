Rails.application.routes.draw do
  root to: 'pages#home'
  get 'login' , to: 'sessions#new'
  get 'profile', to: 'pages#profile' 
  get 'seattlehostlist' , to: 'pages#seattle_host_list'
  get 'tokyohostlist' , to: 'pages#tokyo_host_list'
  get 'search', to: 'events#search'
  post 'search', to: 'reservations#create'

  devise_for :users
  resources :events
  resources :yoyakus
  resources :reservations
  
  # get 'pages/profile'
end
